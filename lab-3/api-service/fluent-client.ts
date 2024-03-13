import { FluentClient } from '@fluent-org/logger';

const remoteLogger = new FluentClient('API service', {
  socket: {
    host: 'localhost',
    port: 24224,
    timeout: 3000, // 3 seconds
  }
});

export default remoteLogger;
