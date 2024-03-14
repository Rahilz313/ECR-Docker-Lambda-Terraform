import json

def lambda_handler(event, context):
    if 'operand1' in event and 'operand2' in event:
        try:
            operand1 = float(event['operand1'])
            operand2 = float(event['operand2'])
            result = operand1 + operand2
            return {
                'statusCode': 200,
                'body': json.dumps({'result': result})
            }
        except ValueError:
            return {
                'statusCode': 400,
                'body': 'Invalid operands. Please provide numeric values for operand1 and operand2.'
            }
    else:
        return {
            'statusCode': 400,
            'body': 'Please provide both operand1 and operand2.'
        }

