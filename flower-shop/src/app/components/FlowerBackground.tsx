'use client';
import { Box } from '@chakra-ui/react';
import { useState, useEffect } from 'react';

const FlowerBackground: React.FC = () => {
  const [isClient, setIsClient] = useState(false);

  useEffect(() => {
    setIsClient(true);
  }, []);

  if (!isClient) {
    return null;
  }

  return (
    <Box
      position="fixed"
      top={0}
      left={0}
      width="100%"
      height="100%"
      pointerEvents="none"
      zIndex={0}
      overflow="hidden"
      opacity={0.1}
    >
      <Box
        position="absolute"
        top="10%"
        left="10%"
        fontSize="2rem"
        opacity={0.3}
      >
        🌸
      </Box>
      <Box
        position="absolute"
        bottom="20%"
        right="15%"
        fontSize="1.5rem"
        opacity={0.2}
      >
        🌺
      </Box>
      <Box
        position="absolute"
        top="50%"
        left="5%"
        fontSize="1.2rem"
        opacity={0.15}
      >
        🌷
      </Box>
      <Box
        position="absolute"
        top="30%"
        right="5%"
        fontSize="1.8rem"
        opacity={0.25}
      >
        🌹
      </Box>
    </Box>
  );
};

export default FlowerBackground; 