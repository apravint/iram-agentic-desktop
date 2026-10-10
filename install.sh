#!/usr/bin/env bash
# ==============================================================================
# IRAM Agentic Desktop - Standalone Installer
# ==============================================================================
set -euo pipefail

GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DEST="${HOME}/.local/bin"
SYSTEMD_DEST="${HOME}/.config/systemd/user"

echo -e "${BOLD}${CYAN}=== Installing IRAM Agentic Desktop ===${NC}"

mkdir -p "$BIN_DEST" "$SYSTEMD_DEST" "$HOME/.config/iram"

echo -e "${BLUE}Copying agentic tools to $BIN_DEST...${NC}"
cp "$SCRIPT_DIR/bin/"* "$BIN_DEST/"
chmod +x "$BIN_DEST/iram-"*

echo -e "${BLUE}Configuring systemd user service...${NC}"
cp "$SCRIPT_DIR/systemd/iram-agentd.service" "$SYSTEMD_DEST/"
systemctl --user daemon-reload 2>/dev/null || true

echo -e "${GREEN}${BOLD}✓ IRAM Agentic Desktop installed successfully!${NC}"
echo -e "Available tools:"
echo -e "  ${BOLD}iram-agent${NC}         # Interactive autonomous agent assistant"
echo -e "  ${BOLD}iram-agent-sidecar${NC} # Wayland companion sidecar window"
echo -e "  ${BOLD}iram-ai-cmd${NC}        # Intelligent terminal shell copilot"
echo -e "  ${BOLD}iram-ai-digest${NC}     # Executive intelligence daily digest"
echo -e "  ${BOLD}iram-models${NC}        # Local Ollama / vLLM model manager"
echo -e "  ${BOLD}iram-vision${NC}        # Multimodal screen vision analyst"
echo -e "  ${BOLD}iram-security-guard${NC}# Agentic real-time safety guard"
