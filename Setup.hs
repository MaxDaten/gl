{-# OPTIONS_GHC -Wall #-}
import Distribution.Simple
import Distribution.Simple.LocalBuildInfo
import System.FilePath
import Generator (generateSource)
import Parser (parseFile)
import Registry (deshenaniganize)

generateAPI :: LocalBuildInfo -> IO ()
generateAPI l = do
  registry <- parseFile "gl.xml"
  putStr "Generating API..."
  generateSource (buildDir l </> "autogen") (deshenaniganize registry)
  putStrLn "done"

main :: IO ()
main = defaultMainWithHooks simpleUserHooks
  { buildHook = \p l h f -> generateAPI l >> buildHook simpleUserHooks p l h f
  , sDistHook = \p ml h f -> case ml of
     Nothing -> fail "No local buildinfo available. configure first"
     Just l -> generateAPI l >> sDistHook simpleUserHooks p ml h f
  }
