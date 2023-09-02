import { NestFactory } from '@nestjs/core';
import { AppModule } from '../app.module';
import { AppService } from '../app.service';
import * as repl from 'repl';

async function bootstrap() {
  const app = await NestFactory.createApplicationContext(AppModule);
  const yourService = app.get(AppService);

  const replServer = repl.start({
    prompt: 'nestjs-repl > ',
  });

  // サービスをREPLに公開
  replServer.context.yourService = yourService;
}

bootstrap();
