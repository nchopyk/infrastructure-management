const config = {
  HTTP_PORT: process.env.HTTP_PORT ? parseInt(process.env.HTTP_PORT) : 7100,
  HOST: process.env.HOST || '0.0.0.0',

  FLUENTD_HOST: process.env.FLUENTD_HOST || 'localhost',
  FLUENTD_PORT: process.env.FLUENTD_PORT ? parseInt(process.env.FLUENTD_PORT) : 24224,
  FLUENTD_TIMEOUT: process.env.FLUENTD_TIMEOUT ? parseInt(process.env.FLUENTD_TIMEOUT) : 3000,
}

export default config;
