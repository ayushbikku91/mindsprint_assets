# mindsprint_assets
Mindspritnt assesment

Question: 
ASSESSMENT:

Create an infra, network, and deployment design diagram to set up new cloud infrastructure in any cloud provider Azure/GCP.

 

Includes (the design should start from a tenant if Azure, a project if GCP) other resources.

    Landing zone
    Management Group
    VNET
    Connectivity Subscription / Other Subscriptions
    Design should support Managed Kubernetes (with production ready)

 

Application Architecture

    Microservice architecture
        With all key components (config, gateway, and service discovery servers)
        Application log management

 

DevSecOps Tools (any tools based on working experience)

    CI (Continuous Integration)
    Code quality
    Artifacts Server
    Security Check
    CD (Continuous delivery/deployment)

------------------------------------------------------------------------------------
Cloud Infrastructure Design on GCP:
Project and Organization Structure:

    Organization:
        Create a GCP organization to manage resources.
    Project:
        Establish a GCP project as a logical unit for resource management.

Networking:

    Landing Zone:
        Set up a Landing Zone as a foundation for the environment.
        Implement Google Cloud's Organization Policy to enforce resource constraints.

    Management Group:
        Utilize Google Cloud Resource Manager to organize resources hierarchically.
        Implement policies for resource control and management.

    VPC (Virtual Private Cloud):
        Create a dedicated VPC for the infrastructure.
        Define subnets for different purposes (e.g., application, database, DMZ).
        Implement Firewall rules for network security.

Connectivity:

    VPN or Interconnect:
        Establish VPN or Interconnect for secure connectivity.
        Connect on-premises data centers, if applicable.

    Subscriptions:
        Set up different subscriptions for environments (e.g., Development, Staging, Production).
        Implement resource quotas and permissions based on subscriptions.

Managed Kubernetes (GKE):

    Kubernetes Cluster:
        Deploy a Managed Kubernetes Cluster using Google Kubernetes Engine (GKE).
        Configure node pools for scalability and reliability.

    Microservices Architecture:
        Implement microservices using containers.
        Deploy essential components such as configuration servers, gateways, and service discovery servers.

    Logging:
        Utilize Google Cloud Logging for centralized log management.
        Configure log export to external log analysis tools if needed.

DevSecOps Tools:

    CI/CD Pipeline:
        Set up a CI/CD pipeline using tools like Jenkins or GitLab CI.
        Integrate version control with the CI system.

    Code Quality:
        Integrate code quality tools like SonarQube into the CI pipeline.
        Enforce code quality checks before deployment.

    Artifacts Server:
        Use a container registry (e.g., Google Container Registry) for storing and managing Docker images.

    Security Checks:
        Integrate security scanning tools (e.g., Container Security Scanner) into the CI/CD pipeline.
        Implement automated security checks at different stages of the pipeline.
