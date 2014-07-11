require 'spec_helper'

describe 'dotdeb_repo::default' do

    context 'squeeze' do
        let(:chef_run) do
          runner = ChefSpec::Runner.new(
            'platform' => 'debian',
            'version' => '6.0.0'
            )
          runner.node.set['lsb']['codename'] = 'squeeze'
          runner.converge(described_recipe)
        end

        it 'add the dotdeb repository to sources.list.d' do
            expect(chef_run).to add_apt_repository 'dotdeb'
            expect(chef_run).to add_apt_preference 'dotdeb'
        end
    end

    context 'wheezy' do
        let(:chef_run) do
          runner = ChefSpec::Runner.new(
            'platform' => 'debian',
            'version' => '7.0.0'
            )
          runner.node.set['lsb']['codename'] = 'wheezy'
          runner.converge(described_recipe)
        end

        it 'add the dotdeb repository to sources.list.d' do
            expect(chef_run).to add_apt_repository 'dotdeb'
            expect(chef_run).to add_apt_preference 'dotdeb'
        end
    end

    context 'priority attribute' do

        let(:chef_run) do
          ChefSpec::Runner.new do |node|
            node.set['lsb']['codename'] = 'wheezy'
          end
        end

        [
          [ 500 ],
          [ 700 ],
          [ 900 ]
        ].each do | priority |

          it 'set the priority of the dotdeb repository to given value' do

            chef_run.node.set['dotdeb_repo']['priority'] = priority
            chef_run.converge(described_recipe)

            expect(chef_run).to add_apt_preference('dotdeb').with(pin_priority: priority.to_s)
          end

        end
    end

end