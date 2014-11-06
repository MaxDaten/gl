{-# LANGUAGE CPP #-}
-----------------------------------------------------------------------------
-- |
-- Copyright   :  (C) 2014 Edward Kmett and Gabríel Arthúr Pétursson
-- License     :  BSD-style (see the file LICENSE)
-- Maintainer  :  Edward Kmett <ekmett@gmail.com>
-- Stability   :  experimental
-- Portability :  portable
--
----------------------------------------------------------------------------
module Graphics.GL (
  , module Graphics.GL.Core45
  , module Graphics.GL.Extension
    module Graphics.GL.Types
) where

import Graphics.GL.Core45
import Graphics.GL.Types
import Graphics.GL.Extension
