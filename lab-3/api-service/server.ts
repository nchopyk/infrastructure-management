import config from './config';
import Fastify from 'fastify';
import remoteLogger from './fluent-client';
import { multistream } from 'pino-multi-stream';


const remoteStream = {
  write: (msg: string) => {
    remoteLogger.emit('API SERVICE', JSON.parse(msg));
  }
};

const streams = [
  { stream: process.stdout },
  { stream: remoteStream }
];

const fastify = Fastify({
  logger: {
    stream: multistream(streams)
  },
});

fastify.get('/', async function handler(request, reply) {

  return { hello: 'world' };
});

async function initHttpGateway(): Promise<void> {
  try {
    await remoteLogger.connect().then(() => fastify.log.info('Fluentd client connected'));
    await fastify.listen({ port: config.HTTP_PORT, host: config.HOST });
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
}

initHttpGateway();
