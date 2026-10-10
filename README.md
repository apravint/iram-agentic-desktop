# 🤖 IRAM Agentic Desktop

> **An autonomous AI Desktop Framework for Linux: Terminal Copilot, Floating Companion Sidecar, Multimodal Vision Analyst, and Local Model Manager.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux%20%7C%20Wayland%20%7C%20X11-purple.svg)]()
[![Providers](https://img.shields.io/badge/AI-Ollama%20%7C%20Gemini%20%7C%20Claude%20%7C%20OpenAI-orange.svg)]()

`iram-agentic-desktop` transforms any modern Linux distribution into an AI-augmented workstation. Whether running local open-weights via **Ollama** or multimodal reasoning via **Gemini / Claude / OpenAI**, this suite provides seamless hotkeys, floating overlays, and terminal copilots.

---

## 🛠️ The Agentic Tool Suite

| Tool | Binary | Description |
| :--- | :--- | :--- |
| **Agentic Workspace** | `iram-agent` | Interactive CLI & TUI autonomous coding and system assistant |
| **Sidecar Chat** | `iram-agent-sidecar` | Floating Wayland companion window docked to your workflow |
| **Shell Copilot** | `iram-ai-cmd` | Context-aware command line assistant, explainer & generator |
| **Executive Digest** | `iram-ai-digest` | Summarizes git commits, open PRs, and system activities into executive briefs |
| **Screen Vision Analyst** | `iram-vision` | Grabs screen regions and analyzes UI layouts, error traces, and diagrams |
| **Model Manager** | `iram-models` | Benchmarks, pulls, switches, and manages local Ollama and vLLM models |
| **Security Guard** | `iram-security-guard` | Real-time monitoring and safety verification for agent tool calls |
| **Smart Clipboard** | `iram-ai-clipboard` | AI-powered clipboard transform, translation, formatting & regex extraction |
| **GitHub Telemetry** | `iram-repo-traffic` | Fetches clone, view, and traffic telemetry across your GitHub repositories |

---

## 🚀 Quick Install

```bash
git clone https://github.com/apravint/iram-agentic-desktop.git ~/.iram-agentic-desktop
~/.iram-agentic-desktop/install.sh
```

---

## ⚡ Recommended Hyprland / Sway Hotkeys

```ini
# Agentic Workspace
bind = $mainMod, A, exec, iram-agent
# Floating Companion Sidecar
bind = $mainMod SHIFT, A, exec, iram-agent-sidecar
# Screen Vision Analyst
bind = $mainMod CTRL, Print, exec, iram-vision
```

---

## 📄 License

Released under the [MIT License](LICENSE).
