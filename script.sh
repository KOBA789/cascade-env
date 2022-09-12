while :; do
          pwd
          if [[ -e "${PWD}/env" ]]; then
            echo "${PWD}/env"
          fi
          if [[ ! "${PWD}" > "${GITHUB_WORKSPACE:-/}" ]]; then
            break
          fi
          cd ..
        done
