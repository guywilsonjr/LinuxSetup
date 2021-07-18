aliases = {
    'update': 'apt update',
    'install': 'apt -y install',
    'upgrade': 'apt -y upgrade',    
    'upgrate': 'update && upgrade',
    'autoremove': 'apt autoremove',
    'alias gfet': 'git fetch',
    'alias gstat': 'git status',
    'alias gdiff': 'git diff',
    'alias gstash': 'git stash',
    'alias gpop': 'git stash pop',
    'alias purge': 'apt purge',
    'alias remove': 'apt remove',
    'alias vi': 'vim',
    'alias gsub': 'git submodule update --init',
    'alias gstatus': 'gfet && gstat',
    'alias gpull': 'git pull',
    'alias greb': 'git rebase',
}

app_package_map = {
    'RAPIDS': ['nvidia-container-toolkit']
}

package_setup_map = {
    'nvidia-container-toolkit': ['nvidia-setup', 'Docker']
}
nvidia_distribution = 'ubuntu20.04'
package_command_setup_map = {
    'nvidia-setup': {
        'mode': 'sudo',
        'final_apt_install': 'nvidia-docker2',
        
        'commands': [
            'curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - ',
            f'curl -s -L https://nvidia.github.io/nvidia-docker/{nvidia_distribution}/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list'
        ]
    }
}
