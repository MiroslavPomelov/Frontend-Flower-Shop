'use client';
import React from 'react';
import { Box, Text, Heading, VStack } from '@chakra-ui/react';

const TestPage: React.FC = () => {
  return (
    <Box
      minH="100vh"
      bg="gray.900"
      display="flex"
      alignItems="center"
      justifyContent="center"
    >
      <VStack spacing={6}>
        <Heading color="white" size="2xl">
          🌸 Flower Shop
        </Heading>
        <Text color="white" fontSize="lg">
          Приложение работает успешно!
        </Text>
        <Text color="pink.300" fontSize="md">
          Chakra UI + Next.js + Tailwind CSS
        </Text>
      </VStack>
    </Box>
  );
};

export default TestPage;
