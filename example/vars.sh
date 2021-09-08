#!/usr/bin/env bash

#AWS Env. Variables
#export AWS_ACCESS_KEY_ID=""
#export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION=us-east-1
export AWS_REGION=us-east-1

export TF_STATE_BUCKET="tf-pipeline-dev-state-bucket"
export TF_STATE_OBJECT_KEY="pipeline-dev.tfstate"
export TF_LOCK_DB="tf-pipeline-dev-lock-table"

PRIVATE_SUBNETS='["subnet-041b661d03dda1b59","subnet-0ed60e2deea610dd2","subnet-03b29473cbc1f7237"]'
PUBLIC_SUBNETS='["subnet-0b8dadce7eec7ba17","subnet-010656df9fa259ecc","subnet-0437b7ede2b7fa30c"]'

export TF_VAR_name_prefix="pipeline-dev"
export TF_VAR_alb_acm_certificate_arn="arn:aws:acm:us-east-1:825007019496:certificate/d6652995-dee6-466d-ac1f-6672ea654472"
export TF_VAR_route53_zone_id="Z05637912AOUKMXCOQUZ3"
export TF_VAR_route53_domain_name="cloud.rogerpereira.com.br"

export TF_VAR_vpc_id="vpc-0ac13085a6b869ef7"
#export TF_VAR_efs_kms_key_arn="arn:aws:kms:us-east-1:825007019496:key/362f1c17-2628-4469-bafa-ac862f62f8fa"

export TF_VAR_efs_enable_encryption=false
export TF_VAR_efs_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_alb_subnet_ids=${PUBLIC_SUBNETS}
export TF_VAR_jenkins_controller_subnet_ids=${PRIVATE_SUBNETS}