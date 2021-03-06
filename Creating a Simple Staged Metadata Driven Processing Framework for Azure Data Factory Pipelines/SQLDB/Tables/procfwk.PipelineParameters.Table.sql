/****** Object:  Table [procfwk].[PipelineParameters]    Script Date: 19/02/2020 19:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [procfwk].[PipelineParameters](
	[ParameterId] [int] IDENTITY(1,1) NOT NULL,
	[PipelineId] [int] NOT NULL,
	[ParameterName] [varchar](128) NOT NULL,
	[ParameterValue] [varchar](128) NULL,
 CONSTRAINT [PK_PipelineParameters] PRIMARY KEY CLUSTERED 
(
	[ParameterId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [procfwk].[PipelineParameters]  WITH CHECK ADD  CONSTRAINT [FK_PipelineParameters_PipelineProcesses] FOREIGN KEY([PipelineId])
REFERENCES [procfwk].[PipelineProcesses] ([PipelineId])
GO
ALTER TABLE [procfwk].[PipelineParameters] CHECK CONSTRAINT [FK_PipelineParameters_PipelineProcesses]
GO
