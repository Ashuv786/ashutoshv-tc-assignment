# :wave: <ins>**Tiger-Connect**</ins> :nerd_face:
### <ins>_(Assignment - Sr. DevOps Engineer)_</ins>

![alt text](https://github.com/Ashuv786/tiger_connect/blob/main/My_Architecture_Board.jpg?raw=true)

## :radioactive: **Infra_Overview !**
1. VPC
2. ALB
3. ECS Cluster
4. RDS
5. Route 53
6. CloudWatch Logging

(All above resources obey standard HA architecture principles)

## :warning: **Improvements !**
1. **Auto-Scaling based on timings**
   * For example:
     * Scale-up: 7 AM
     * Scale-down: 10 PM (or after the peak)
2. **Terraform Remote State File**
   * S3 can be used as the placeholder
3. **Locking Mechanism for state file**
   * DynamoDB could be a good solution
4. **Modules:**
   * To better organize the configuration
   * Keep all modules in a single place
5. **Multi-layering:**
   * This must be used while in prod
   * For example:
     * network layer - vpc, route53, etc
     * computer layer - ecs
     * RDS layer - DB, etc


## :thought_balloon: **Final Points !**
* **CICD** could be involved to further automate the deployment
* **Parameters** can be used to use this same script over several infra
* **Observability** needs a large improvement

###
### This solution <ins>could be evolved</ins> further with time & thoughts.
#### :no_entry: This is <ins>not production ready</ins> yet.
#
#### _Dated: 11-Mar-2022 (22:07)_
#### _(Revision: v1)_

# :vulcan_salute:
