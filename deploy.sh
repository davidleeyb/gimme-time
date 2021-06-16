#! /bin/bash

npm install -g serverless
serverless config credentials --provider aws --key AKIASSZ4LG67NCIUAX6W --secret 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 --profile awscoder --overwrite
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/target/$env -v -r us-west-2 --profile awscoder
