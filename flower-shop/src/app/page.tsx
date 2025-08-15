'use client';
import React from 'react';
import { Box, Text, Heading, VStack, Button } from '@chakra-ui/react';
import { useRouter } from 'next/navigation';

export default function Home() {
  const router = useRouter();

  return (
    <Box
      minH="100vh"
      bg="gray.900"
      display="flex"
      alignItems="center"
      justifyContent="center"
    >
      <VStack spacing={8}>
        <Heading color="white" size="2xl">
          🌸 Flower Shop
        </Heading>
        <Text color="white" fontSize="lg" textAlign="center">
          Добро пожаловать в мир прекрасных цветов
        </Text>
        <Text color="pink.300" fontSize="md" textAlign="center">
          Chakra UI + Next.js + Tailwind CSS
        </Text>
        <VStack spacing={4}>
          <Button 
            colorScheme="pink" 
            size="lg"
            onClick={() => router.push('/home')}
          >
            Перейти к главной странице
          </Button>
          <Button 
            colorScheme="purple" 
            variant="outline"
            onClick={() => router.push('/test')}
          >
            Тестовая страница
          </Button>
        </VStack>
      </VStack>
    </Box>
  );
}
