# Cybersecurity Intelligence System

An automated threat intelligence pipeline using AI-powered analysis patterns to process cybersecurity feeds and extract actionable insights.

## 🎯 Project Overview

This system continuously monitors cybersecurity news sources and threat feeds, applying structured AI analysis patterns to extract key insights, trends, and actionable intelligence. Built as part of my transition into cybersecurity, demonstrating practical application of threat intelligence methodologies and modern automation techniques.

## 🚀 Live Results

**Daily Intelligence Reports**: Browse [daily-reports/](daily-reports/) and [threat-analysis/](threat-analysis/) folders to see live automated analysis from industry-leading cybersecurity sources.

**Latest Analysis Includes**:
- Critical vulnerability assessments (CVE tracking)
- Threat actor behavior patterns
- Industry trend identification
- Research question generation for follow-up

## 🔧 Technical Stack

- **AI Analysis**: Fabric (Daniel Miessler's AI pattern framework)
- **Language Model**: Dolphin Llama 3 (8B parameters, CPU inference via Ollama)
- **Automation**: Cron jobs + Bash scripting
- **Infrastructure**: Docker containers on Ubuntu Server
- **Version Control**: Automated Git commits and pushes
- **Sources**: Curated RSS feeds from industry leaders

## 📊 Intelligence Sources

| Source | Pattern Applied | Focus Area |
|--------|----------------|------------|
| **Krebs on Security** | `extract_wisdom` | Investigative cybercrime reporting |
| **SANS Internet Storm Center** | `analyze_threat_report` | Daily threat advisories |
| **Dark Reading** | `extract_wisdom` | Enterprise security trends |
| **Microsoft Security Blog** | `analyze_threat_report` | Real-world threat intelligence |
## 🧠 Analysis Patterns

- **extract_wisdom** - Distills key insights, takeaways, and strategic recommendations
- **analyze_threat_report** - Identifies security risks, attack vectors, and mitigation strategies  
- **create_questions** - Generates follow-up research topics and investigation leads

## ⚙️ System Architecture

```
┌─────────────────┐    ┌──────────────┐    ┌─────────────────┐
│   RSS Feeds     │───▶│    Fabric    │───▶│   GitHub Repo   │
│  (5 sources)    │    │  AI Analysis │    │  (Intelligence) │
└─────────────────┘    └──────────────┘    └─────────────────┘
        │                       │                     │
        │              ┌─────────────────┐           │
        │              │     Ollama      │           │
        │              │ Dolphin Llama 3 │           │
        │              └─────────────────┘           │
        │                                            │
        └──────────────────────────▶─────────────────┘
           Daily 3AM Cron Job              Mobile Access
```

## 📁 Repository Structure

```
├── daily-reports/          # Daily RSS feed analysis
│   ├── krebs_wisdom_*.md
│   ├── darkreading_wisdom_*.md
│   └── uscert_questions_*.md
├── threat-analysis/         # Security-focused pattern outputs
│   ├── sans_threats_*.md
│   └── microsoft_threats_*.md
├── automation-scripts/      # Cron jobs and processing scripts
│   └── daily_rss_analysis.sh
├── weekly-summaries/        # Aggregated trend analysis (planned)
└── insights/               # Manual analysis and research
```

## 🎓 Learning Objectives

1. **Continuous Learning** - Build practical cybersecurity knowledge through structured analysis
2. **Pattern Recognition** - Identify emerging threats and industry trends
3. **Professional Development** - Demonstrate analytical methodology for career transition
4. **Knowledge Base** - Create searchable intelligence archive for Security+ certification prep

## 📈 Methodology

This project follows Daniel Miessler's intelligence methodology:
- **Continuous Input** (automated RSS monitoring)
- **Structured Analysis** (AI-powered pattern extraction)
- **Knowledge Synthesis** (trend identification and reporting)

## 🛠️ Setup Instructions

### Prerequisites
- Ubuntu Server with Docker
- Ollama running Dolphin Llama 3 model
- Fabric AI framework installed
- Git configured with appropriate credentials

### Installation
1. **Clone repository**:
   ```bash
   git clone https://github.com/saument1986/cybersecurity-intelligence.git
   cd cybersecurity-intelligence
   ```

2. **Configure automation**:
   ```bash
   chmod +x automation-scripts/daily_rss_analysis.sh
   crontab -e
   # Add: 0 3 * * * cd /path/to/repo && ./automation-scripts/daily_rss_analysis.sh
   ```

3. **Verify patterns**:
   ```bash
   fabric --listpatterns | grep -E "(extract_wisdom|analyze_threat_report|create_questions)"
   ```

## 📱 Access Methods

- **GitHub Web/Mobile**: Browse reports directly in repository
- **Local Integration**: Symlink to Obsidian vault for unified knowledge management
- **API Access**: Raw markdown files can be processed by other tools

## 🔄 Automation Schedule

- **Daily Analysis**: 3:00 AM EST - RSS feeds processed and analyzed
- **Auto-commit**: Results pushed to GitHub immediately after processing
- **Mobile Sync**: Fresh intelligence available within minutes

## 🎯 Career Context

Built during transition from hands-on technical work to cybersecurity, targeting CompTIA Security+ certification. Demonstrates practical application of:
- Threat intelligence methodologies
- AI-assisted analysis workflows  
- Systems automation and monitoring
- Professional documentation practices

## 🔮 Future Enhancements

- [ ] Weekly trend aggregation reports
- [ ] Integration with additional threat feeds (MITRE ATT&CK, CVE databases)
- [ ] Slack/email notifications for high-priority threats
- [ ] Custom pattern development for specific threat categories
- [ ] Metrics dashboard for intelligence volume and quality

---

*Last updated: July 26, 2025*  
*Next milestone: Weekly automated trend analysis*

## 📧 Contact

For questions about methodology or technical implementation, feel free to reach out through GitHub issues.
