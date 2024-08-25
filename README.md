## Justificativa para o Uso do Padrão Saga Coreografado

Na construção desta aplicação, optamos por utilizar o padrão Saga Coreografado para gerenciar transações distribuídas. Essa escolha foi fundamentada por diversos fatores, que incluem:

### 1. Descentralização e Independência dos Serviços
No padrão Saga Coreografado, não existe um orquestrador central que controla o fluxo das transações. Cada serviço é responsável por decidir quando e como participar de uma saga, baseando-se em eventos. Isso aumenta a independência dos serviços, reduz o acoplamento e facilita a escalabilidade, permitindo que cada serviço evolua e seja implantado de forma independente.

### 2. Facilidade de Escalabilidade
A coreografia permite uma melhor escalabilidade, pois não há um ponto único de controle. Cada serviço opera de maneira autônoma, processando eventos e executando suas operações. Esse modelo é particularmente vantajoso em arquiteturas de microserviços, onde diferentes serviços podem ter diferentes necessidades de escalabilidade.

### 3. Resiliência e Tolerância a Falhas
Como cada serviço opera de forma independente e assíncrona, o sistema se torna mais resiliente a falhas. Se um serviço falhar, ele pode ser reiniciado ou retrabalhado sem afetar diretamente os outros serviços. Além disso, cada serviço pode implementar sua própria lógica de compensação em caso de falhas, melhorando a robustez do sistema.

### 4. Facilidade de Adaptação a Mudanças
Em uma arquitetura coreografada, adicionar novos passos à saga ou modificar os existentes é mais simples, pois os serviços são independentes e comunicam-se por meio de eventos. Isso permite a fácil introdução de novos serviços ou a modificação dos fluxos de negócio sem grandes impactos na arquitetura geral.

### 5. Compatibilidade com Ambientes de Alta Complexidade
Para sistemas com múltiplos fluxos de trabalho complexos e interdependentes, a coreografia é uma excelente escolha. Ela permite que esses fluxos sejam gerenciados de forma mais natural e flexível, já que cada serviço reage a eventos conforme necessário.

### 6. Menor Sobrecarga para o Orquestrador
Ao utilizar o padrão coreografado, evitamos a criação de um gargalo em um orquestrador central, o qual, em cenários de alto volume de transações, poderia se tornar um ponto de falha ou um limite para a escalabilidade do sistema.

### Conclusão
A escolha do padrão Saga Coreografado foi guiada pela necessidade de criar um sistema distribuído e escalável, capaz de lidar com a complexidade e a independência de seus componentes, mantendo a resiliência e a adaptabilidade às mudanças do negócio. Esse padrão é ideal para cenários onde a flexibilidade e a independência dos serviços são prioridades.
