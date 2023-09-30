import { Injectable } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';

@Injectable()
export class AppService {
  constructor(private readonly prisma: PrismaClient) {}
  async getHello(): Promise<string> {
    return this.prisma.user.findMany()[0] ?? 'hello';
  }
}
