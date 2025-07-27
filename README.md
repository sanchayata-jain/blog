# blog

s3 stores static website files
route53 will handle our domain name
cloudfront will distribute that globally
backend will contain simple api which shows us how many people have read our blog posts on our website
api gateway, lambda, dynamo db and cloudwatch -> backend
route 53, cloudfront and s3 -> frontend
github actions & open tofu -> deployment 


to deploy new blog post:
create a new blog post using markdown 
a github action should run when new markdown is made and trigger a fresh deployment to