arn=

create-policy:
	@aws iam create-role \
  --role-name lambda-example \
  --assume-role-policy-document file://policy.json \
  | tee logs/role.log

upload-function:
	@zip function.zip index.js

	@aws lambda create-function \
  --function-name test-cli \
  --zip-file fileb://function.zip \
  --handler index.handler \
  --runtime nodejs12.x \
  --role $(arn) \
  | tee logs/lambda-create.log

update-function:
	@zip function.zip index.js

	@aws lambda update-function-code \
  --zip-file fileb://function.zip \
  --function-name test-cli \
  --publish \
  | tee logs/lambda-update.log

remove-lambda:
	@aws lambda delete-function \
  --function-name test-cli

remove-policy:
	@aws iam delete-role \
  --role-name lambda-example

invoke-lambda:
	@aws lambda invoke \
  --function-name test-cli \
  --log-type Tail \
  logs/lambda-exec.log

.PHONY: clean
clean:
	rm -fR logs/* function.zip