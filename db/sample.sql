
create table if not exists combined_repositories_showcase (
  id bigint not null,
  node_id text null,
  name text null,
  full_name text null,
  private text null,
  owner text null,
  html_url text null,
  description text null,
  fork text null,
  url text null,
  forks_url text null,
  keys_url text null,
  collaborators_url text null,
  teams_url text null,
  hooks_url text null,
  issue_events_url text null,
  events_url text null,
  assignees_url text null,
  branches_url text null,
  tags_url text null,
  blobs_url text null,
  git_tags_url text null,
  git_refs_url text null,
  trees_url text null,
  statuses_url text null,
  languages_url text null,
  stargazers_url text null,
  contributors_url text null,
  subscribers_url text null,
  subscription_url text null,
  commits_url text null,
  git_commits_url text null,
  comments_url text null,
  issue_comment_url text null,
  contents_url text null,
  compare_url text null,
  merges_url text null,
  archive_url text null,
  downloads_url text null,
  issues_url text null,
  pulls_url text null,
  milestones_url text null,
  notifications_url text null,
  labels_url text null,
  releases_url text null,
  deployments_url text null,
  created_at timestamp with time zone null,
  updated_at timestamp with time zone null,
  pushed_at timestamp with time zone null,
  git_url text null,
  ssh_url text null,
  clone_url text null,
  svn_url text null,
  homepage text null,
  size bigint null,
  stargazers_count bigint null,
  watchers_count bigint null,
  language text null,
  has_issues bigint null,
  has_projects text null,
  has_downloads bigint null,
  has_wiki text null,
  has_pages text null,
  has_discussions text null,
  forks_count bigint null,
  mirror_url text null,
  archived text null,
  disabled text null,
  open_issues_count text null,
  license text null,
  allow_forking bigint null,
  is_template text null,
  web_commit_signoff_required text null,
  visibility text null,
  forks bigint null,
  open_issues text null,
  watchers bigint null,
  default_branch text null,
  score bigint null,
  organization bigint null,
  readme text null,
  contributors jsonb null,
  manual_label text null,
  prediction double precision null,
  release_downloads text null,
  code_of_conduct text null,
  contributing text null,
  security_policy text null,
  issue_templates text null,
  pull_request_template text null,
  subscribers_count bigint null,
  ai_prediction text null,
  university text null,
  constraint sample_pkey primary key (id)
) TABLESPACE pg_default;


insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/linqs/psl/{archive_format}{/ref}', '0', 'https://api.github.com/repos/linqs/psl/assignees{/user}', 'https://api.github.com/repos/linqs/psl/git/blobs{/sha}', 'https://api.github.com/repos/linqs/psl/branches{/branch}', 'https://github.com/linqs/psl.git', NULL, 'https://api.github.com/repos/linqs/psl/collaborators{/collaborator}', 'https://api.github.com/repos/linqs/psl/comments{/number}', 'https://api.github.com/repos/linqs/psl/commits{/sha}', 'https://api.github.com/repos/linqs/psl/compare/{base}...{head}', 'https://api.github.com/repos/linqs/psl/contents/{+path}', NULL, '["eriq-augustine","stephenbach","dickensc","berty38","puuj","ericnorris","cfpryor","sriramiscool","shrestabs","JackSullivan","shobeir","mbroecheler","alexmemory","jrfoulds","WhiteAu","vihanggodbole","almumill","andrew-thach","Cortys","gvozdetsky"]', 'https://api.github.com/repos/linqs/psl/contributors', '2011-07-29 20:24:30+00', 'main', 'https://api.github.com/repos/linqs/psl/deployments', 'The PSL software from the University of Maryland and the University of California Santa Cruz', '0', 'https://api.github.com/repos/linqs/psl/downloads', 'https://api.github.com/repos/linqs/psl/events', '0', '101', '101', 'https://api.github.com/repos/linqs/psl/forks', 'linqs/psl', 'https://api.github.com/repos/linqs/psl/git/commits{/sha}', 'https://api.github.com/repos/linqs/psl/git/refs{/sha}', 'https://api.github.com/repos/linqs/psl/git/tags{/sha}', 'git://github.com/linqs/psl.git', '0', '1', '1', '0', '1', '1', 'http://psl.linqs.org', 'https://api.github.com/repos/linqs/psl/hooks', 'https://github.com/linqs/psl', '1', '0', 'https://api.github.com/repos/linqs/psl/issues/comments{/number}', 'https://api.github.com/repos/linqs/psl/issues/events{/number}', NULL, 'https://api.github.com/repos/linqs/psl/issues{/number}', 'https://api.github.com/repos/linqs/psl/keys{/key_id}', 'https://api.github.com/repos/linqs/psl/labels{/name}', 'Java', 'https://api.github.com/repos/linqs/psl/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/linqs/psl/merges', 'https://api.github.com/repos/linqs/psl/milestones{/number}', NULL, 'psl', 'MDEwOlJlcG9zaXRvcnkyMTI1OTIw', 'https://api.github.com/repos/linqs/psl/notifications{?since,all,participating}', '56', '56', '1', 'linqs', 0.9, '0', NULL, 'https://api.github.com/repos/linqs/psl/pulls{/number}', '2024-06-10 15:37:44+00', 'PSL
===

### Build Status
[![Main](https://github.com/linqs/psl/actions/workflows/main.yml/badge.svg)](https://github.com/linqs/psl/actions/workflows/main.yml)

Probabilistic soft logic (PSL) is a machine learning framework for developing probabilistic models.
PSL models are easy to use and fast.
You can define models using a straightforward logical syntax and solve them with fast convex optimization.
PSL has produced state-of-the-art results in many areas spanning natural language processing, social-network analysis, knowledge graphs, recommender system, and computational biology.
More information about PSL is available at the [PSL homepage](https://psl.linqs.org).

Getting Started with PSL
------------------------

If you want to use PSL to build models, you probably do not need this source code.
Instead, visit the [Getting Started guide](https://psl.linqs.org/blog/2018/07/15/getting-started-with-psl.html) to learn how to create PSL projects that will automatically install a stable version of these libraries.

Installing PSL from Source
--------------------------

If you do want to install PSL from source, you can use [Maven](https://maven.apache.org/) 3.x.
In the top-level directory of the PSL source (which should be the same directory that holds this README), run:
```sh
mvn install
```

Installing PSL with Gurobi
--------------------------

PSL can additionally be used with the [Gurobi](http://www.gurobi.com/) solver for inference.
Gurobi is a commercial solver, but free academic licenses are available.
To use Gurobi with PSL, you must have Gurobi installed and licensed, see [Gurobi Quickstart Guide](https://www.gurobi.com/documentation/quickstart.html).
Further, you must install the Gurobi jar file into your local Maven repository.
See [Guide to installing 3rd party JARs](https://maven.apache.org/guides/mini/guide-3rd-party-jars-local.html) for more information.

To do this, first download the Gurobi jar file from the [Gurobi website](https://www.gurobi.com/downloads/).
You will need to create an account and agree to the license terms.
You must also obtain a [Gurobi license](https://www.gurobi.com/documentation/current/quickstart_windows/obtaining_a_grb_license.html) that is registered and saved to your machine.
Be sure to export the `GUROBI_HOME` environment variable to point to your install directory, `<installdir>`, and `GRB_LICENSE_FILE` environment variable to point to the location of the license file.
Moreover, you must have the Gurobi install bin directory, `<installdir>/bin`, added to your `PATH` environment variable and `<installdir>/lib` added to your `LD_LIBRARY_PATH` environment variable.
Then, run the following command, replacing `<installdir>/lib/gurobi.jar` with the path to the downloaded jar file and `<version>` with the version of Gurobi you downloaded:
```sh
mvn install:install-file -Dfile=<installdir>/lib/gurobi.jar -DgroupId=com.gurobi -DartifactId=gurobi -Dversion=<version> -Dpackaging=jar
```
If you are using a version of Gurobi other than 10.0.3, you will also need to update the Gurobi dependency version in the PSL `pom.xml` file.
Then, you can install PSL with Gurobi support by running:
```sh
mvn install -P Gurobi
```
PSL inference can then be run with Gurobi using the `GurobiInference` class.

Citing PSL
----------

We hope you find PSL useful!
If you have, please consider citing PSL in any related publications as
```
@article{bach:jmlr17,
  Author = {Bach, Stephen H. and Broecheler, Matthias and Huang, Bert and Getoor, Lise},
  Journal = {Journal of Machine Learning Research (JMLR)},
  Title = {Hinge-Loss {M}arkov Random Fields and Probabilistic Soft Logic},
  Year = {2017}
}
```

Additional Resources
====================
- [PSL Homepage](https://psl.linqs.org)
- [PSL Examples](https://github.com/linqs/psl-examples)
- [API Reference](https://psl.linqs.org/api/)
- [PSL Source Repository](https://github.com/linqs/psl)
- [PSL Wiki](https://psl.linqs.org/wiki/)
- [Getting Started Guide](https://psl.linqs.org/blog/2018/07/15/getting-started-with-psl.html)
- [User Group](https://groups.google.com/forum/#!forum/psl-users)
', '0', 'https://api.github.com/repos/linqs/psl/releases{/id}', '1', NULL, '9588', 'git@github.com:linqs/psl.git', '300', 'https://api.github.com/repos/linqs/psl/stargazers', 'https://api.github.com/repos/linqs/psl/statuses/{sha}', '44', 'https://api.github.com/repos/linqs/psl/subscribers', 'https://api.github.com/repos/linqs/psl/subscription', 'https://github.com/linqs/psl', 'https://api.github.com/repos/linqs/psl/tags', 'https://api.github.com/repos/linqs/psl/teams', 'https://api.github.com/repos/linqs/psl/git/trees{/sha}', 'ucsc', '2025-01-26 12:57:40+00', 'https://api.github.com/repos/linqs/psl', 'public', '300', '300', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/{archive_format}{/ref}', '0', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/assignees{/user}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/git/blobs{/sha}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/branches{/branch}', 'https://github.com/eric-ai-lab/MiniGPT-5.git', NULL, 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/collaborators{/collaborator}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/comments{/number}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/commits{/sha}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/compare/{base}...{head}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/contents/{+path}', NULL, '["KzZheng","guspan-tanadi","Shivanipalya26","eric-xw","eltociear","jkooy"]', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/contributors', '2023-10-02 03:48:04+00', 'main', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/deployments', 'Official implementation of paper "MiniGPT-5: Interleaved Vision-and-Language Generation via Generative Vokens"', '0', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/downloads', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/events', '0', '52', '52', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/forks', 'eric-ai-lab/MiniGPT-5', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/git/commits{/sha}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/git/refs{/sha}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/git/tags{/sha}', 'git://github.com/eric-ai-lab/MiniGPT-5.git', '1', '1', '1', '0', '1', '0', 'https://eric-ai-lab.github.io/minigpt-5.github.io/', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/hooks', 'https://github.com/eric-ai-lab/MiniGPT-5', '2', '0', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/issues/comments{/number}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/issues/events{/number}', NULL, 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/issues{/number}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/keys{/key_id}', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/labels{/name}', 'Python', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/merges', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/milestones{/number}', NULL, 'MiniGPT-5', 'R_kgDOKaxUrw', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/notifications{?since,all,participating}', '6', '6', '1', 'eric-ai-lab', 0.92, '0', NULL, 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/pulls{/number}', '2024-12-12 23:08:50+00', '# MiniGPT-5: Interleaved Vision-and-Language Generation via Generative Vokens
[Kaizhi Zheng](https://kzzheng.github.io/)* , [Xuehai He](https://scholar.google.com/citations?user=kDzxOzUAAAAJ&hl=en)* , [Xin Eric Wang](https://eric-xw.github.io/) 

University of California, Santa Cruz

<a href=''https://arxiv.org/abs/2310.02239''><img src=''https://img.shields.io/badge/Paper-Arxiv-red''></a> <a href=''https://eric-ai-lab.github.io/minigpt-5.github.io/''><img src=''https://img.shields.io/badge/Project-Page-green''></a>

![teaser](figs/teaser.png)

Large Language Models (LLMs) have garnered significant attention for their advancements in natural language processing, demonstrating unparalleled prowess in text comprehension and generation. Yet, the simultaneous generation of images with coherent textual narratives remains an evolving frontier. In response, we introduce an innovative interleaved vision-and-language generation technique anchored by the concept of ``generative vokens", acting as the bridge for harmonized image-text outputs. Our approach is characterized by a distinctive two-staged training strategy focusing on description-free multimodal generation, where the training requires no comprehensive descriptions of images.  To bolster model integrity, classifier-free guidance is incorporated, enhancing the effectiveness of vokens on image generation. Our model, MiniGPT-5, exhibits substantial improvement over the baseline Divter model on the MMDialog dataset and consistently delivers superior or comparable multimodal outputs in human evaluations on the VIST dataset, highlighting its efficacy across diverse benchmarks.

## Model Architecture
![arch](figs/structure.png)

## Getting Started
### Installation

**1. Download repo and create environment**

Clone our repo and create a new python environment.

```bash
git clone https://github.com/eric-ai-lab/MiniGPT-5.git
cd MiniGPT-5
conda create -n minigpt5 python=3.10
conda activate minigpt5
pip install -r requirements.txt
```

**2. Prepare the pretrained weights**

Our model is based on the pretrained [MiniGPT-4](https://github.com/Vision-CAIR/MiniGPT-4) (including [Vicuna](https://github.com/lm-sys/FastChat) and [BLIP-2](https://github.com/salesforce/LAVIS)). Please download [Vicuna V0 7B](https://huggingface.co/Vision-CAIR/vicuna-7b/tree/main) weights. Then, set the path to the vicuna weight in the [model config file](minigpt4/configs/models/minigpt4.yaml#L16) at Line 16.

Since the Pretrained MiniGPT-4 Aligned Checkpoint is small, we already download in config folder, and the model path is set in [config file](config/minigpt4.yaml#10) at Line 10.

**3. Download MiniGPT-5 Checkpoint**

Since our model is trained with two stages **(Stage 1: Unimodal Alignment Stage, Stage 2: Multimodal Learning Stage)**, we provide both two-stage checkpoints here:

|                                          Stage 1: CC3M                                           |                                          Stage 2: VIST                                          |                            Stage 2: MMDialog                             |
:------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------:
 [Download](https://drive.google.com/file/d/1y-VUXubIzFe0iq5_CJUaE3HKhlrdn4n2/view?usp=sharing) | [Download](https://drive.google.com/file/d/1rjTsKwF8_pqcNLbdZdurqZLSpKoo2K9F/view?usp=drive_link) | [Download](https://drive.google.com/file/d/1uo0LU-X11F1FIPC2h62s4Uzl6rBSAoQH/view?usp=sharing)

Stage 2 needs the pretrained weights in Stage 1, so always download Stage 1 weights first. 

Please download these weights into a single folder, and we will call this folder as ***WEIGHT_FOLDER*** in the following sections.

### Demo
We provide a [python file](examples/playground.py) to try our model. This file will generate multimodal outputs under the [example folder](examples/) by taking a two-turn multimodal inputs.

```bash
cd examples
export IS_STAGE2=True
python3 playground.py --stage1_weight WEIGHT_FOLDER/stage1_cc3m.ckpt 
                        --test_weight WEIGHT_FOLDER/stage2_vist.ckpt
```

### Evaluation
Our model evaluate on three datasets: [CC3M](https://ai.google.com/research/ConceptualCaptions/download), [VIST](https://visionandlanguage.net/VIST/), and [MMDialog](https://github.com/victorsungo/MMDialog). Due to the license, we only share some dataset examples under the [datasets](datasets/) folder. If you want to fully test the performance, please download the full dataset and format into the same data structures under the [datasets](datasets/) folder.

**1. Stage 1: Unimodal Alignment Stage (CC3M) evaluation**

During this stage, the goal is to generate correct images by giving image descriptions.

Generation (If you have more than one gpus, you can set gpus to 0,1,2...):
```bash
export IS_STAGE2=False
export WEIGHTFOLDER=WEIGHT_FOLDER
export DATAFOLDER=datasets/CC3M
export OUTPUT_FOLDER=outputs
python3 train_eval.py --test_data_path cc3m_val.tsv 
                        --test_weight stage1_cc3m.ckpt
                        --gpus 0
```

Calculate Metric:
```bash
export CC3M_FOLDER=datasets/CC3M
python3 metric.py --test_weight stage1_cc3m.ckpt
```

**2. Stage 2: Multimodal Learning Stage (VIST) evaluation**

Model will take the previous multimodal story sequences and generate either unimodal or multimodal outputs. Here, the default code is about multimodal input & image generation. To test other settings, please remove the *not test* condition in [Line 280](dataloader.py#280).

Generation:
```bash
export IS_STAGE2=True
export WEIGHTFOLDER=WEIGHT_FOLDER
export DATAFOLDER=datasets/VIST
export OUTPUT_FOLDER=outputs
python3 train_eval.py --test_data_path val_cleaned.json 
                        --test_weight stage2_vist.ckpt
                        --stage1_weight stage1_cc3m.ckpt
                        --gpus 0
```

Calculate Metric:
```bash
python3 metric.py --test_weight stage2_vist.ckpt
```

**3. Stage 2: Multimodal Learning Stage (MMDialog) evaluation**

Model will take previous turn multimodal inputs and generate multimodal response for multimodal conversations.

Generation:
```bash
export IS_STAGE2=True
export WEIGHTFOLDER=WEIGHT_FOLDER
export DATAFOLDER=datasets/MMDialog
export OUTPUT_FOLDER=outputs
python3 train_eval.py --test_data_path test/test_conversations.txt 
                        --test_weight stage2_mmdialog.ckpt
                        --stage1_weight stage1_cc3m.ckpt
                        --gpus 0
```

Calculate Metric:
```bash
python3 metric.py --test_weight stage2_mmdialog.ckpt
```

### Training

**1. Stage 1 training**

Download the CC3M dataset and format into the same data structure in dataset folder.

Then, we use test data as example:
```bash
export IS_STAGE2=False
export WEIGHTFOLDER=WEIGHT_FOLDER
export DATAFOLDER=datasets/CC3M
python3 train_eval.py --is_training True
                        --train_data_path cc3m_val.tsv
                        --val_data_path cc3m_val.tsv
                        --model_save_name stage1_cc3m_{epoch}-{step}
                        --gpus 0
```

**2. Stage 2 training**

Download the VIST or MMDialog datasets and format into the same data structure in dataset folder.

Here we use VIST test data as example:
```bash
export IS_STAGE2=True
export WEIGHTFOLDER=WEIGHT_FOLDER
export DATAFOLDER=datasets/VIST
python3 train_eval.py --is_training True
                        --train_data_path val_cleaned.json
                        --val_data_path val_cleaned.json
                        --stage1_weight stage1_cc3m.ckpt
                        --model_save_name stage2_vist_{epoch}-{step}
                        --gpus 0
```

## If you find MiniGPT-5 useful in your research or applications, please cite as below:
```bibtex
@misc{zheng2023minigpt5,
      title={MiniGPT-5: Interleaved Vision-and-Language Generation via Generative Vokens}, 
      author={Kaizhi Zheng and Xuehai He and Xin Eric Wang},
      year={2023},
      journal={arXiv preprint arXiv:2310.02239}
}
```
', '0', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/releases{/id}', '1', NULL, '64903', 'git@github.com:eric-ai-lab/MiniGPT-5.git', '861', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/stargazers', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/statuses/{sha}', '13', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/subscribers', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/subscription', 'https://github.com/eric-ai-lab/MiniGPT-5', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/tags', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/teams', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5/git/trees{/sha}', 'ucsc', '2025-03-03 14:41:28+00', 'https://api.github.com/repos/eric-ai-lab/MiniGPT-5', 'public', '861', '861', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/{archive_format}{/ref}', '0', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/assignees{/user}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/git/blobs{/sha}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/branches{/branch}', 'https://github.com/ucscXena/ucsc-xena-client.git', '# Contributor Covenant Code of Conduct

## Our Pledge

We as members, contributors, and leaders pledge to make participation in our
community a harassment-free experience for everyone, regardless of age, body
size, visible or invisible disability, ethnicity, sex characteristics, gender
identity and expression, level of experience, education, socio-economic status,
nationality, personal appearance, race, religion, or sexual identity
and orientation.

We pledge to act and interact in ways that contribute to an open, welcoming,
diverse, inclusive, and healthy community.

## Our Standards

Examples of behavior that contributes to a positive environment for our
community include:

* Demonstrating empathy and kindness toward other people
* Being respectful of differing opinions, viewpoints, and experiences
* Giving and gracefully accepting constructive feedback
* Accepting responsibility and apologizing to those affected by our mistakes,
  and learning from the experience
* Focusing on what is best not just for us as individuals, but for the
  overall community

Examples of unacceptable behavior include:

* The use of sexualized language or imagery, and sexual attention or
  advances of any kind
* Trolling, insulting or derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others'' private information, such as a physical or email
  address, without their explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

## Enforcement Responsibilities

Community leaders are responsible for clarifying and enforcing our standards of
acceptable behavior and will take appropriate and fair corrective action in
response to any behavior that they deem inappropriate, threatening, offensive,
or harmful.

Community leaders have the right and responsibility to remove, edit, or reject
comments, commits, code, wiki edits, issues, and other contributions that are
not aligned to this Code of Conduct, and will communicate reasons for moderation
decisions when appropriate.

## Scope

This Code of Conduct applies within all community spaces, and also applies when
an individual is officially representing the community in public spaces.
Examples of representing our community include using an official e-mail address,
posting via an official social media account, or acting as an appointed
representative at an online or offline event.

## Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported to the community leaders responsible for enforcement at
genome-cancer@soe.ucsc.edu.
All complaints will be reviewed and investigated promptly and fairly.

All community leaders are obligated to respect the privacy and security of the
reporter of any incident.

## Enforcement Guidelines

Community leaders will follow these Community Impact Guidelines in determining
the consequences for any action they deem in violation of this Code of Conduct:

### 1. Correction

**Community Impact**: Use of inappropriate language or other behavior deemed
unprofessional or unwelcome in the community.

**Consequence**: A private, written warning from community leaders, providing
clarity around the nature of the violation and an explanation of why the
behavior was inappropriate. A public apology may be requested.

### 2. Warning

**Community Impact**: A violation through a single incident or series
of actions.

**Consequence**: A warning with consequences for continued behavior. No
interaction with the people involved, including unsolicited interaction with
those enforcing the Code of Conduct, for a specified period of time. This
includes avoiding interactions in community spaces as well as external channels
like social media. Violating these terms may lead to a temporary or
permanent ban.

### 3. Temporary Ban

**Community Impact**: A serious violation of community standards, including
sustained inappropriate behavior.

**Consequence**: A temporary ban from any sort of interaction or public
communication with the community for a specified period of time. No public or
private interaction with the people involved, including unsolicited interaction
with those enforcing the Code of Conduct, is allowed during this period.
Violating these terms may lead to a permanent ban.

### 4. Permanent Ban

**Community Impact**: Demonstrating a pattern of violation of community
standards, including sustained inappropriate behavior,  harassment of an
individual, or aggression toward or disparagement of classes of individuals.

**Consequence**: A permanent ban from any sort of public interaction within
the community.

## Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage],
version 2.0, available at
https://www.contributor-covenant.org/version/2/0/code_of_conduct.html.

Community Impact Guidelines were inspired by [Mozilla''s code of conduct
enforcement ladder](https://github.com/mozilla/diversity).

[homepage]: https://www.contributor-covenant.org

For answers to common questions about this code of conduct, see the FAQ at
https://www.contributor-covenant.org/faq. Translations are available at
https://www.contributor-covenant.org/translations.
', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/collaborators{/collaborator}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/comments{/number}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/commits{/sha}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/compare/{base}...{head}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/contents/{+path}', NULL, '["acthp","jingchunzhu","ucscHexmap","krepecka","frano-m","AkhilKamath","MillenniumFalconMechanic","nathandunn","maryjgoldman","NoopDog","syt123450","madhavmk","pulkitkkr","dependabotbot","sanchitbansal10","abhishekvermasg"]', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/contributors', '2015-03-16 03:50:04+00', 'master', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/deployments', 'Functional genomics browser', '0', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/downloads', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/events', '0', '43', '43', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/forks', 'ucscXena/ucsc-xena-client', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/git/commits{/sha}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/git/refs{/sha}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/git/tags{/sha}', 'git://github.com/ucscXena/ucsc-xena-client.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/ucscXena/ucsc-xena-client/hooks', 'https://github.com/ucscXena/ucsc-xena-client', '3', '0', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/issues/comments{/number}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/issues/events{/number}', NULL, 'https://api.github.com/repos/ucscXena/ucsc-xena-client/issues{/number}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/keys{/key_id}', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/labels{/name}', 'JavaScript', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/ucscXena/ucsc-xena-client/merges', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/milestones{/number}', NULL, 'ucsc-xena-client', 'MDEwOlJlcG9zaXRvcnkzMjI5OTk4NQ==', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/notifications{?since,all,participating}', '134', '134', '1', 'ucscXena', 0.94, '0', NULL, 'https://api.github.com/repos/ucscXena/ucsc-xena-client/pulls{/number}', '2025-03-04 20:57:41+00', '# UCSC Xena Roadmap
[Roadmap](https://github.com/ucscXena/ucsc-xena-client/wiki/UCSC-Xena-Roadmap)

# UCSC Xena Client
Functional genomics browser

## Developer docs

This is a browser app, written in javascript. The primary technologies we use
are [React](https://facebook.github.io/react/), the
HTML [2d canvas API](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D),
and [RxJS](https://github.com/Reactive-Extensions/RxJS). We use [babel](https://babeljs.io/) for
[es6](https://babeljs.io/learn-es2015/) support, and webpack
for the build.

The application architecture looks a lot like redux, but was developed before
redux was a thing. So, we can use redux dev tooling, and the reselect lib, but
we currently do not use redux itself. The async model is in the direction of
redux-observable, with action side-effects invoking rx streams that will then
dispatch later actions.

Further doc links:

 * [Architecture overview](docs/overview.md)
 * [State updates, in detail](docs/immutable-updates.md)
 * [Debug strategies, widget hierarchy, etc.](docs/details.md)
 * [Writing an action handler](docs/howdoi.md)

## Build
The build is based on npm and webpack.
 * Ensure that git and node are installed
   * On OSX, install brew http://brew.sh/
   * `brew install git`
   * `brew install node`
 * `git clone https://github.com/acthp/ucsc-xena-client.git`
 * `cd ucsc-xena-client`
 * `npm install`
 * `npm start`
 * browse to [http://localhost:8080/webpack-dev-server/heatmap/](http://localhost:8080/webpack-dev-server/heatmap/)

There may be npm warnings about missing redux libraries, but these can be ignored. We''re not using redux. We''re
just using redux tooling.

### References
 * http://blog.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/
 * http://webpack.github.io/
', '0', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/releases{/id}', '1', NULL, '8471', 'git@github.com:ucscXena/ucsc-xena-client.git', '59', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/stargazers', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/statuses/{sha}', '6', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/subscribers', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/subscription', 'https://github.com/ucscXena/ucsc-xena-client', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/tags', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/teams', 'https://api.github.com/repos/ucscXena/ucsc-xena-client/git/trees{/sha}', 'ucsc', '2025-03-04 20:57:44+00', 'https://api.github.com/repos/ucscXena/ucsc-xena-client', 'public', '59', '59', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/branches{/branch}', 'https://github.com/UCSC-VLAA/story-adapter.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/story-adapter/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/contents/{+path}', NULL, '["jwmao1","xk-huang","yunfeixie233"]', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/contributors', '2024-08-10 10:05:23+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/deployments', 'A Training-free Iterative Framework for Long Story Visualization', '0', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/downloads', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/events', '0', '111', '111', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/forks', 'UCSC-VLAA/story-adapter', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/git/tags{/sha}', 'git://github.com/UCSC-VLAA/story-adapter.git', '0', '1', '1', '1', '1', '1', 'https://jwmao1.github.io/storyadapter/', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/hooks', 'https://github.com/UCSC-VLAA/story-adapter', '4', '0', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/story-adapter/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/languages', 'mit', NULL, 'https://api.github.com/repos/UCSC-VLAA/story-adapter/merges', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/milestones{/number}', NULL, 'story-adapter', 'R_kgDOMhuKLQ', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/notifications{?since,all,participating}', '0', '0', '1', 'UCSC-VLAA', 0.91, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/story-adapter/pulls{/number}', '2025-01-18 09:12:54+00', '<p align="center">
  <img src="./docs/logo.png" height=150>
</p>



# Story-Adapter: A Training-free Iterative Framework for Long Story Visualization
<span>
<a href="https://arxiv.org/abs/2410.06244"><img src="https://img.shields.io/badge/arXiv-2410.06244-b31b1b.svg" height=22.5></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" height=22.5></a>  
<a href="https://jwmao1.github.io/storyadapter/"><img src="https://img.shields.io/badge/project-StoryAdapter-purple.svg" height=22.5></a>
<a href="https://colab.research.google.com/drive/1sFbw0XlCQ6DBRU3s2n_F2swtNmHoicM-?usp=sharing"><img src="https://colab.research.google.com/assets/colab-badge.svg" height=22.5></a>
</span>

Code for the paper [Story-Adapter: A Training-free Iterative Framework for Long Story Visualization](https://arxiv.org/abs/2410.06244)

Note: This code base is still not complete. 

### About this repo:

The repository contains the official implementation of "Story-Adapter".

## Introduction 🦖

> Story visualization, the task of generating coherent images based on a narrative, has seen significant advancements with the emergence of text-to-image models, particularly diffusion models. However, maintaining semantic consistency, generating high-quality fine-grained interactions, and ensuring computational feasibility remain challenging, especially in long story visualization (_i.e._, up to 100 frames). In this work, we propose a training-free and computationally efficient framework, termed **Story-Adapter**, to enhance the generative capability of long stories. Specifically, we propose an _iterative_ paradigm to refine each generated image, leveraging both the text prompt and all generated images from the previous iteration. Central to our framework is a training-free global reference cross-attention module, which aggregates all generated images from the previous iteration to preserve semantic consistency across the entire story, while minimizing computational costs with global embeddings. This iterative process progressively optimizes image generation by repeatedly incorporating text constraints, resulting in more precise and fine-grained interactions. Extensive experiments validate the superiority of Story-Adapter in improving both semantic consistency and generative capability for fine-grained interactions, particularly in long story scenarios.

<br>

<img src="./docs/teaser-github.jpg" width="800"/>


## News 🚀
* **2024.10.10**: [Paper](https://arxiv.org/abs/2410.06244) is released on ArXiv.
* **2024.10.04**: Code released.

## Framework 🤖 

> Story-Adapter framework. Illustration of the proposed iterative paradigm, which consists of initialization, iterations in Story-Adapter, and implementation of Global Reference Cross-Attention (GRCA).
Story-Adapter first visualizes each image only based on the text prompt of the story and uses all results as reference images for the future round. 
In the iterative paradigm, Story-Adapter inserts GRCA into SD. For the ith iteration of each image visualization, GRCA will aggregate the information flow of all reference images during the denoising process through cross-attention.
All results from this iteration will be used as a reference image to guide the dynamic update of the story visualization in the next iteration.

<br>

<img src="./docs/framework.jpg" width="1080"/>


## Quick Start 🔧

### Installation
The project is built with Python 3.10.14, PyTorch 2.2.2. CUDA 12.1, cuDNN 8.9.02
For installing, follow these instructions:
~~~
# git clone this repository
git clone https://github.com/UCSC-VLAA/story-adapter.git
cd story-adapter

# create new anaconda env
conda create -n StoryAdapter python=3.10
conda activate StoryAdapter 

# install packages
pip install -r requirements.txt
~~~

### Download the checkpoint
- downloading [RealVisXL_V4.0](https://huggingface.co/SG161222/RealVisXL_V4.0/tree/main) put it into "./RealVisXL_V4.0"
- downloading [clip_image_encoder](https://huggingface.co/h94/IP-Adapter/tree/main/sdxl_models/image_encoder) put it into "./IP-Adapter/sdxl_models/image_encoder"
- downloading [ip-adapter_sdxl](https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.bin?download=true) put it into "./IP-Adapter/sdxl_models/ip-adapter_sdxl.bin"

### Running Demo

~~~
python run.py --base_model_path your_path/RealVisXL_V4.0 --image_encoder_path your_path/IP-Adapter/sdxl_models/image_encoder --ip_ckpt your_path/IP-Adapter/sdxl_models/ip-adapter_sdxl.bin 
~~~

### Customized Running

~~~
python run.py --base_model_path your_path/RealVisXL_V4.0 --image_encoder_path your_path/IP-Adapter/sdxl_models/image_encoder --ip_ckpt your_path/IP-Adapter/sdxl_models/ip-adapter_sdxl.bin 
--story "your prompt1" "your prompt2" "your prompt3" ... "your promptN"
~~~
Note: Regarding custom stories, we suggest the template [Character Definition + Interaction Definition + Scene Definition] for better story visualization performance. For example, the Character Definition is "One man wearing yellow robe," the Interaction Definition is "dancing," and the Scene Definition is "the palace hall." So, the input prompt is "One man wearing yellow robe dancing in the palace hall."

## Performance 🎨

### Regular-length Story Visualization 
- downloading the [StorySalon](https://huggingface.co/datasets/haoningwu/StorySalon/resolve/main/testset.zip?download=true) test set."

| GIF1 | GIF2  | GIF3  |
| --- | --- | --- |
| <img src="./docs/our_005169.gif" alt="GIF 1" width="224"/>  | <img src="./docs/our_007016.gif" alt="GIF 2" width="224"/> | <img src="./docs/our_007137.gif" alt="GIF 3" width="224"/>  |

| GIF4 | GIF5  | GIF6  |
| --- | --- | --- |
| <img src="./docs/our_013804.gif" alt="GIF 4" width="224"/>  | <img src="./docs/our_015770.gif" alt="GIF 5" width="224"/> | <img src="./docs/our_000026.gif" alt="GIF 6" width="224"/>  |

| GIF7 | GIF8  | GIF9  |
| --- | --- | --- |
| <img src="./docs/our_012060.gif" alt="GIF 7" width="224"/>  | <img src="./docs/our_008614.gif" alt="GIF 8" width="224"/> | <img src="./docs/our_008710.gif" alt="GIF 9" width="224"/>  |


### Long Story Visualization 

<br>

<img src="./docs/comic1.png" width="1080"/>

<br>
<br>
<img src="./docs/comic7.png" width="1080"/>

<br>
<br>
<img src="./docs/comic3.png" width="1080"/>

### Running with Different Style
comic style:
~~~
python run.py --base_model_path your_path/RealVisXL_V4.0 --image_encoder_path your_path/IP-Adapter/sdxl_models/image_encoder --ip_ckpt your_path/IP-Adapter/sdxl_models/ip-adapter_sdxl.bin --style comic
~~~
<br>

<img src="./docs/style_comic.png" width="1080"/>

<be>

film style:
~~~
python run.py --base_model_path your_path/RealVisXL_V4.0 --image_encoder_path your_path/IP-Adapter/sdxl_models/image_encoder --ip_ckpt your_path/IP-Adapter/sdxl_models/ip-adapter_sdxl.bin --style film
~~~
<br>

<img src="./docs/style_film.png" width="1080"/>

<be>

realistic style:
~~~
python run.py --base_model_path your_path/RealVisXL_V4.0 --image_encoder_path your_path/IP-Adapter/sdxl_models/image_encoder --ip_ckpt your_path/IP-Adapter/sdxl_models/ip-adapter_sdxl.bin --style realistic
~~~
<br>

<img src="./docs/style_realistic.png" width="1080"/>

<be>


## Acknowledgement 🍻

Deeply appreciate these wonderful open source projects: [stablediffusion](https://github.com/Stability-AI/StableDiffusion), [clip](https://github.com/openai/CLIP), [ip-adapter](https://github.com/tencent-ailab/IP-Adapter), [storygen](https://github.com/haoningwu3639/StoryGen), [storydiffusion](https://github.com/HVision-NKU/StoryDiffusion), [theatergen](https://github.com/donahowe/TheaterGen), [timm](https://github.com/huggingface/pytorch-image-models).

## Citation 🔖

If you find this repository useful, please consider giving a star ⭐ and citation 🙈:

```
@misc{mao2024story_adapter,
  title={{Story-Adapter: A Training-free Iterative Framework for Long Story Visualization}},
  author={Mao, Jiawei and Huang, Xiaoke and Xie, Yunfei and Chang, Yuanqi and Hui, Mude and Xu, Bingjie and Zhou, Yuyin},
  journal={arXiv},
  volume={abs/2410.06244},
  year={2024},
}
```





', '0', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/releases{/id}', '1', NULL, '293878', 'git@github.com:UCSC-VLAA/story-adapter.git', '810', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/stargazers', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/statuses/{sha}', '11', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/subscribers', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/subscription', 'https://github.com/UCSC-VLAA/story-adapter', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/tags', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/teams', 'https://api.github.com/repos/UCSC-VLAA/story-adapter/git/trees{/sha}', 'ucsc', '2025-03-04 21:42:25+00', 'https://api.github.com/repos/UCSC-VLAA/story-adapter', 'public', '810', '810', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/masc-ucsc/livehd/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/livehd/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/livehd/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/livehd/branches{/branch}', 'https://github.com/masc-ucsc/livehd.git', NULL, 'https://api.github.com/repos/masc-ucsc/livehd/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/livehd/comments{/number}', 'https://api.github.com/repos/masc-ucsc/livehd/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/livehd/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/livehd/contents/{+path}', NULL, '["renau","swang203","sakshi15108","wait-how","rafaeltp","HCoffman","jesec","renovatebot","qchen63","sloanyliu","maximiliantiao","joshuapena","rohan-ganpati","jsg831","rabieifk","alidezhihui","arikyueh","birdeclipse","crhilber","markzakharov","bhawandeepsingh","zacharypotter","tnetuser","renaidisco","mgkapp","clrighthand0","bokket","kabylkas","shahzaibk23","mjao1","olyad","okbonhahaha","qabylqas","dabader","5surim","akashsridhar","acardara","milad621","IamtheMZI","stnichol","mithro","azure-pipelinesbot","deny72","mantri03"]', 'https://api.github.com/repos/masc-ucsc/livehd/contributors', '2018-04-23 20:44:49+00', 'master', 'https://api.github.com/repos/masc-ucsc/livehd/deployments', 'Live Hardware Development (LiveHD), a productive infrastructure for Synthesis and Simulation', '0', 'https://api.github.com/repos/masc-ucsc/livehd/downloads', 'https://api.github.com/repos/masc-ucsc/livehd/events', '0', '49', '49', 'https://api.github.com/repos/masc-ucsc/livehd/forks', 'masc-ucsc/livehd', 'https://api.github.com/repos/masc-ucsc/livehd/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/livehd/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/livehd/git/tags{/sha}', 'git://github.com/masc-ucsc/livehd.git', '1', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/livehd/hooks', 'https://github.com/masc-ucsc/livehd', '5', '0', 'https://api.github.com/repos/masc-ucsc/livehd/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/livehd/issues/events{/number}', 'Directory exists', 'https://api.github.com/repos/masc-ucsc/livehd/issues{/number}', 'https://api.github.com/repos/masc-ucsc/livehd/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/livehd/labels{/name}', 'FIRRTL', 'https://api.github.com/repos/masc-ucsc/livehd/languages', 'other', NULL, 'https://api.github.com/repos/masc-ucsc/livehd/merges', 'https://api.github.com/repos/masc-ucsc/livehd/milestones{/number}', NULL, 'livehd', 'MDEwOlJlcG9zaXRvcnkxMzA3NTQ1Nzk=', 'https://api.github.com/repos/masc-ucsc/livehd/notifications{?since,all,participating}', '11', '11', '1', 'masc-ucsc', 0.85, '0', NULL, 'https://api.github.com/repos/masc-ucsc/livehd/pulls{/number}', '2025-03-02 18:11:52+00', '
![LiveHD](https://masc.soe.ucsc.edu/logos/livehd5.png)

# LiveHD: Live Hardware Development

## Summary

[![CodeFactor](https://www.codefactor.io/repository/github/masc-ucsc/livehd/badge)](https://www.codefactor.io/repository/github/masc-ucsc/livehd)
[![codecov](https://codecov.io/gh/masc-ucsc/livehd/branch/master/graph/badge.svg)](https://codecov.io/gh/masc-ucsc/livehd)
[![CI](https://github.com/masc-ucsc/livehd/actions/workflows/ubuntu.yml/badge.svg)](https://github.com/masc-ucsc/livehd/actions/workflows/ubuntu.yml)


LiveHD is a "compiler" infrastructure for hardware design optimized for
synthesis and simulation. The goals is to enable a more productive flow where
the ASIC/FPGA designer can work with multiple hardware description languages
like CHISEL, Pyrope, or Verilog.


## Goal

LiveHD: a fast and friendly hardware development flow that you can trust

To be "Fast", LiveHD aims to be parallel, scalable, and incremental/live flow.

To be "friendly", LiveHD aims to build new models to have good error reporting.

To "trust", LiveHD has CI and many random tests with logic equivalence tests (LEC).

> :warning: LiveHD is beta under active development and we keep improving the
> API. Semantic versioning is a 0.+, significant API changes are expect.


## LiveHD Framework


LiveHD stands for Live Hardware Development. By live, we mean that small
changes in the design should have the synthesis and simulation results in a few
seconds.

As the goal of "seconds," we do not need to perform too fine grain incremental
work. Notice that this is a different goal from having an typical incremental
synthesis, where many edges are added and removed in the order of thousands of
nodes/edges.

LiveHD is optimized for synthesis and simulation. The main components of LiveHD
includes LGraph, LNAST, integrated 3rd-party tools, code generation, and "live"
techniques. The core of LiveHD is a graph structure called LGraph (Live Graph).
LGraph is built for fast synthesis and simulation, and interfaces other tools
like Yosys, ABC, OpenTimer, and Mockturtle. LNAST stands for language neutral
AST, which is a high-level IR on both front/back-end of LGraph. LNAST helps to
bridge different HDLs and HLS into LiveHD and is useful for HDLs/C++ code
generation.

![LiveHD overall flow](./docs/livehd.svg)

## Contribute to LiveHD

Contributors are welcome to the LiveHD project. This project is led by the
[MASC group](https://masc.soe.ucsc.edu) from UCSC.

There is a list of available [projects.md](docs/projects.md) to further improve
LiveHD. If you want to contribute or seek for MS/undergraduate thesis projects,
please contact renau@ucsc.edu to query about them.


You can also
[donate](https://secure.ucsc.edu/s/1069/bp18/interior.aspx?sid=1069&gid=1001&pgid=780&cid=1749&dids=1053)
to the LiveHD project. The funds will be used to provide food for meetings,
equipment, and support to students/faculty at UCSC working on this project.


The instructions for installation and internal LiveHD passes can be found at
[Documentation](https://masc-ucsc.github.io/docs/livehd/00-intro/)


If you are not one of the code owners, you need to create a pull request as
indicated in [CONTRIBUTING.md](docs/CONTRIBUTING.md).


# Publications
For more detailed information and paper reference, please refer to
the following publications. If you are doing research or projects corresponding
to LiveHD, please send us a notification, we are glad to add your paper.

1. [A Multi-threaded Fast Hardware Compiler for HDLs](docs/papers/livehd_cc23.pdf), Sheng-Hong Wang, Hunter Coffman, Kenneth Mayer, Sakshi Garg, and Jose Renau. International Conference on Compiler Construction (CC), February 2023.

2. [LiveHD: A Productive Live Hardware Development Flow](docs/papers/LiveHD_IEEE_Micro20.pdf), Sheng-Hong Wang, Rafael T. Possignolo, Haven Skinner, and Jose Renau, IEEE Micro Special Issue on Agile and Open-Source Hardware, July/August 2020.

3. [LiveSim: A Fast Hot Reload Simulator for HDLs](docs/papers/LiveSim_ISPASS20.pdf), Haven Skinner, Rafael T. Possignolo, Sheng-Hong Wang, and Jose Renau, International Symposium on Performance Analysis of Systems and Software (ISPASS), April 2020. **(Best Paper Nomination)**

4. [SMatch: Structural Matching for Fast Resynthesis in FPGAs](docs/papers/SMatch_DAC19.pdf), Rafael T.
   Possignolo and Jose Renau, Design Automation Conference (DAC), June 2019.

5. [LiveSynth: Towards an Interactive Synthesis Flow](docs/papers/LiveSynth_DAC17.pdf), Rafael T. Possignolo, and
   Jose Renau, Design Automation Conference (DAC), June 2017.

## LGraph

6. [LGraph: A Unified Data Model and API for Productive Open-Source Hardware Design](docs/papers/LGraph_WOSET19.pdf),
   Sheng-Hong Wang, Rafael T. Possignolo, Qian Chen, Rohan Ganpati, and
   Jose Renau, Second Workshop on Open-Source EDA Technology (WOSET), November 2019.

7. [LGraph: A multi-language open-source database for VLSI](docs/papers/LGraph_WOSET18.pdf), Rafael T. Possignolo,
   Sheng-Hong Wang, Haven Skinner, and Jose Renau. First Workshop on Open-Source
   EDA Technology (WOSET), November 2018. **(Best Tool Nomination)**

## LNAST

8. [LNAST: A Language Neutral Intermediate Representation for Hardware
   Description Languages](docs/papers/LNAST_WOSET19.pdf), Sheng-Hong Wang,
   Akash Sridhar, and Jose Renau, Second Workshop on Open-Source EDA Technology
   (WOSET), 2019.


', '0', 'https://api.github.com/repos/masc-ucsc/livehd/releases{/id}', '1', NULL, '119558', 'git@github.com:masc-ucsc/livehd.git', '217', 'https://api.github.com/repos/masc-ucsc/livehd/stargazers', 'https://api.github.com/repos/masc-ucsc/livehd/statuses/{sha}', '28', 'https://api.github.com/repos/masc-ucsc/livehd/subscribers', 'https://api.github.com/repos/masc-ucsc/livehd/subscription', 'https://github.com/masc-ucsc/livehd', 'https://api.github.com/repos/masc-ucsc/livehd/tags', 'https://api.github.com/repos/masc-ucsc/livehd/teams', 'https://api.github.com/repos/masc-ucsc/livehd/git/trees{/sha}', 'ucsc', '2025-03-03 23:52:40+00', 'https://api.github.com/repos/masc-ucsc/livehd', 'public', '217', '217', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/branches{/branch}', 'https://github.com/UCSC-VLAA/CLIPA.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/CLIPA/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/contents/{+path}', NULL, '["xhl-video","zw615","cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/contributors', '2023-04-26 22:45:04+00', 'master', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/deployments', '[NeurIPS 2023] This repository includes the official implementation of our paper "An Inverse Scaling Law for CLIP Training"', '0', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/downloads', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/events', '0', '14', '14', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/forks', 'UCSC-VLAA/CLIPA', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/git/tags{/sha}', 'git://github.com/UCSC-VLAA/CLIPA.git', '0', '1', '1', '0', '1', '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/CLIPA/hooks', 'https://github.com/UCSC-VLAA/CLIPA', '6', '0', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/CLIPA/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/UCSC-VLAA/CLIPA/merges', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/milestones{/number}', NULL, 'CLIPA', 'R_kgDOJb0vOA', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/notifications{?since,all,participating}', '1', '1', '1', 'UCSC-VLAA', 0.95, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/CLIPA/pulls{/number}', '2024-06-03 22:29:16+00', '# An Inverse Scaling Law for CLIP Training

This repo contains official Pytorch and JAX implementation of **CLIPA** in our paper: [An Inverse Scaling Law for CLIP Training](https://arxiv.org/abs/2305.07017) 

<p align="center">
  <img src="clipa_jax/figs/inverse_scaling_law.png" width="1080">
Overview of the Inverse Scaling Law: larger image/text encoders
enable training with fewer image/text tokens while maintaining competitive performance
</p>




## 📰 News


**[2023.10.4]** We have achieved a successful scale-up of our model to **bigG/14**, attaining an impressive **83.0%** zero-shot top-1 accuracy on the ImageNet-1K dataset.
For the detailed training configuration, please refer to the [t5x branch](https://github.com/UCSC-VLAA/CLIPA/tree/t5x/clipa_jax/configs/model_bigG). Additionally, you can access the pre-trained and fine-tuned weights for both JAX and PyTorch version in the [Google Drive](https://drive.google.com/drive/folders/1nu5i8mLbOvYq4kovoLP85DjjV8I3N46L?usp=sharing).
<br>

**[2023.9.21]** [Our paper](https://arxiv.org/abs/2305.07017) is accepted by **NeurIPS 2023**!


**[2023.6.16]**  We release [CLIPA-v2](https://arxiv.org/abs/2306.15658). Compared to the prior best publicly available CLIP model, our CLIPA-v2 can be trained significantly faster and yields stronger performance. Our best model is H/14@336x336 on DataComp-1B with an accuracy of 81.8, and its estimated training cost is <$15k! 
<br>

**[Note]** All of our [CLIPA-v2](https://arxiv.org/abs/2306.15658) models were trained on TPU using our [JAX codebase](https://github.com/UCSC-VLAA/CLIPA/tree/master/clipa_jax). We followed the same pre-training process as CLIPA-v1, but with a more efficient fine-tuning strategy. In order to replicate our results, we have provided the **training configuration** (e.g. the H-14 model in this folder [here](https://github.com/UCSC-VLAA/CLIPA/tree/master/clipa_jax/configs/model_h)), along with the **pre-trained weights, configuration, and logs**, which can be found [here](https://drive.google.com/drive/folders/1ArW1-JL7DL43ifg47cIJ4CBeMFIpPkrR?usp=sharing).  
<br>

<p align="center">
  <img src="clipa_jax/figs/clipav2_teaser.png" width="1080">
</p>


<table><tbody>
<!-- START TABLE -->
<!-- TABLE HEADER -->
<th valign="bottom"></th>
<th valign="bottom">data</th>
<th valign="bottom">Schedule</th>
<th valign="bottom">GPU Hours</th>
<th valign="bottom">Estimated Cost</th>
<th valign="bottom">zero-shot IN-1K</th>
<th valign="bottom">model weight</th>
<!-- TABLE BODY -->
<tr><td align="left">H/14</td>
<td align="center">LAION-2B</td>
<td align="center">12.8B@84 + 512M@224 + 128M@336</td>
<td align="center">8640</td>
<td align="center">$13613</td>
<td align="center">79.1</td>
<td align="center"><a href="https://huggingface.co/UCSC-VLAA/ViT-H-14-CLIPA-336-laion2B">PyTorch / <a href="https://drive.google.com/file/d/1IQ0BgWGy0Tsui9iK_wdVifFKc3NfC0BD/view?usp=sharing">JAX</td>
<tr><td align="left">L/14</td>
<td align="center">DataCOMP-1B</td>
<td align="center">12.8B@84 + 512M@224 +128M@336 </td>
<td align="center">4520</td>
<td align="center">$7124</td>
<td align="center">80.3</td>
<td align="center"><a href="https://huggingface.co/UCSC-VLAA/ViT-L-14-CLIPA-336-datacomp1B">PyTorch / <a href="https://drive.google.com/file/d/1yJD8p27HdZGK2DZ8x64uR6idl_QNkL7w/view?usp=sharing">JAX</td>
<tr><td align="left">H/14</td>
<td align="center">DataCOMP-1B</td>
<td align="center">12.8B@84 + 512M@224 + 128M@336</td>
<td align="center">8640</td>
<td align="center">$13613</td>
<td align="center">81.8</td>
<td align="center"><a href="https://huggingface.co/UCSC-VLAA/ViT-H-14-CLIPA-336-datacomp1B">PyTorch / <a href="https://drive.google.com/file/d/1t0k_5m3VVLRyThUjc4JQ_-z29hABuFBV/view?usp=sharing">JAX</td>
<tr><td align="left">bigG/14</td>
<td align="center">DataCOMP-1B</td>
<td align="center">12.8B@84 + 512M@224 + 128M@336</td>
<td align="center">23742</td>
<td align="center">$39056</td>
<td align="center">83.0</td>
<td align="center"><a href="https://huggingface.co/UCSC-VLAA/ViT-bigG-14-CLIPA-336-datacomp1B">PyTorch / <a href="https://drive.google.com/file/d/1WwXPYb61Zoz-Zd3R5sRwEIGlPRDj3QJo/view?usp=sharing">JAX</td>
</tbody></table>

Our CLIPA-v2’s GPU hour is estimated using an 8-A100 80GB GPU machine on Google Cloud. 
The corresponding training cost is estimated based on 80GB A100’s cloud pricing.


## Introduction
CLIP, the first foundation model that connects images and text, has enabled many recent breakthroughs in computer vision. 
However, its associated training cost is prohibitively high, imposing a significant barrier to its widespread exploration. 
In this paper, we present a surprising finding that there exists an _inverse_ scaling law for CLIP training, 
whereby the larger the image/text encoders used, the shorter the sequence length of image/text tokens that can be applied in training. 
Moreover, we showcase that the strategy for reducing image/text token length plays a crucial role in determining the quality of this scaling law.

As a result of this finding, we are able to successfully train CLIP even by using academic resources. 
For example, on an A100 eight-GPU server, our CLIP models achieve zero-shot top-1 ImageNet accuracies of **63.2%** in about **2 days**, 
**67.8%** in about **3 days**, and **69.3%** in about **4 days**. 
By reducing the computation barrier associated with CLIP, we hope to inspire more research in this field, particularly from academics.

<p align="center">
  <img src="clipa_jax/figs/acc_compute.png" width="1080">
</p>

## TPU Usage
Our experiments are conducted on both GPUs and TPUs. Both the JAX and PyTorch implementations enable TPU training.
But how to gain access and setup TPU machines? Check this [brief doc](TPU_USAGE.md).
In a nutshell, you can access TPU machines on Google Cloud **for free**!


## License
This project is under the  Apache 2.0 License.


## Acknowledgement

The jax repo is built on [big vision](https://github.com/google-research/big_vision), and the pytorch repo is built on [OpenCLIP](https://github.com/mlfoundations/open_clip). 
We''ve also borrowed some code from [TIMM](https://github.com/huggingface/pytorch-image-models) and [MAE](https://github.com/facebookresearch/mae).
Many thanks to the awesome works from the open-source community!

We are also very grateful that this work is supported by a gift from Open Philanthropy, TPU Research Cloud (TRC) program, and Google Cloud Research Credits program.

## Citation

```
@inproceedings{li2023clipa,
      title={An Inverse Scaling Law for CLIP Training}, 
      author={Xianhang Li and Zeyu Wang and Cihang Xie},
      booktitle={NeurIPS},
      year={2023},
}
@article{li2023clipav2,
      title={CLIPA-v2: Scaling CLIP Training with 81.1% Zero-shot ImageNet Accuracy within a $10,000 Budget; An Extra $4,000 Unlocks 81.8% Accuracy}, 
      author={Xianhang Li and Zeyu Wang and Cihang Xie},
      journal={arXiv preprint arXiv:2306.15658},
      year={2023},
}
```
## Contact
If you have any questions, please feel free to raise an issue or contact us directly: 
Xianhang Li: xli421@ucsc.edu;
Zeyu Wang:  zwang615@ucsc.edu
', '0', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/releases{/id}', '1', NULL, '16897', 'git@github.com:UCSC-VLAA/CLIPA.git', '310', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/stargazers', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/statuses/{sha}', '14', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/subscribers', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/subscription', 'https://github.com/UCSC-VLAA/CLIPA', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/tags', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/teams', 'https://api.github.com/repos/UCSC-VLAA/CLIPA/git/trees{/sha}', 'ucsc', '2025-03-02 15:24:13+00', 'https://api.github.com/repos/UCSC-VLAA/CLIPA', 'public', '310', '310', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/ucsc-vama/essent/{archive_format}{/ref}', '0', 'https://api.github.com/repos/ucsc-vama/essent/assignees{/user}', 'https://api.github.com/repos/ucsc-vama/essent/git/blobs{/sha}', 'https://api.github.com/repos/ucsc-vama/essent/branches{/branch}', 'https://github.com/ucsc-vama/essent.git', NULL, 'https://api.github.com/repos/ucsc-vama/essent/collaborators{/collaborator}', 'https://api.github.com/repos/ucsc-vama/essent/comments{/number}', 'https://api.github.com/repos/ucsc-vama/essent/commits{/sha}', 'https://api.github.com/repos/ucsc-vama/essent/compare/{base}...{head}', 'https://api.github.com/repos/ucsc-vama/essent/contents/{+path}', NULL, '["sbeamer","haoozi","MSPDUTTA","johndrab","krishnakpandian"]', 'https://api.github.com/repos/ucsc-vama/essent/contributors', '2019-10-17 23:02:26+00', 'master', 'https://api.github.com/repos/ucsc-vama/essent/deployments', 'high-performance RTL simulator', '0', 'https://api.github.com/repos/ucsc-vama/essent/downloads', 'https://api.github.com/repos/ucsc-vama/essent/events', '0', '13', '13', 'https://api.github.com/repos/ucsc-vama/essent/forks', 'ucsc-vama/essent', 'https://api.github.com/repos/ucsc-vama/essent/git/commits{/sha}', 'https://api.github.com/repos/ucsc-vama/essent/git/refs{/sha}', 'https://api.github.com/repos/ucsc-vama/essent/git/tags{/sha}', 'git://github.com/ucsc-vama/essent.git', '0', '1', '1', '0', '0', '0', NULL, 'https://api.github.com/repos/ucsc-vama/essent/hooks', 'https://github.com/ucsc-vama/essent', '7', '0', 'https://api.github.com/repos/ucsc-vama/essent/issues/comments{/number}', 'https://api.github.com/repos/ucsc-vama/essent/issues/events{/number}', NULL, 'https://api.github.com/repos/ucsc-vama/essent/issues{/number}', 'https://api.github.com/repos/ucsc-vama/essent/keys{/key_id}', 'https://api.github.com/repos/ucsc-vama/essent/labels{/name}', 'Scala', 'https://api.github.com/repos/ucsc-vama/essent/languages', 'other', NULL, 'https://api.github.com/repos/ucsc-vama/essent/merges', 'https://api.github.com/repos/ucsc-vama/essent/milestones{/number}', NULL, 'essent', 'MDEwOlJlcG9zaXRvcnkyMTU5MDAxNDQ=', 'https://api.github.com/repos/ucsc-vama/essent/notifications{?since,all,participating}', '2', '2', '1', 'ucsc-vama', 0.9, '0', NULL, 'https://api.github.com/repos/ucsc-vama/essent/pulls{/number}', '2024-06-19 22:28:54+00', 'essent (essential signal simulation enabled by netlist transformations) [![Build Status](https://github.com/ucsc-vama/essent/actions/workflows/scala-ci.yml/badge.svg)](https://github.com/ucsc-vama/essent/actions/workflows/scala-ci.yml)
================================================================================

_Looking for RepCut, the parallelized version? Please check the [repcut branch](https://github.com/ucsc-vama/essent/tree/repcut)!_

This is a beta of _essent_, a high-performance RTL simulator generator. Essent operates on hardware designs in the form of [firrtl](https://github.com/freechipsproject/firrtl), an IR for hardware with a well-defined [spec](https://github.com/chipsalliance/firrtl-spec/releases/latest/download/spec.pdf). Given a hardware design in firrtl, essent emits C++ that can be compiled to make a fast simulator of the design. Essent provides several optimizations to improve performance, and they can be turned on or off with command line flags. A typical flow using the tool will: use essent to make C++ from the firrtl input, write a C++ harness for the emitted code, compile everything, and finally run the simulation. To make a simulator with essent, you will need a JVM (compatible with Scala), and a C++ compiler capable of C++11.

Essent incorporates a number of optimizations to deliver great performance. To learn more about essent as a whole as well as its optimizations, the [talk](https://woset-workshop.github.io/Videos/2021/a23-video.mp4) and [paper](https://woset-workshop.github.io/PDFs/2021/a23.pdf) from [WOSET 2021](https://woset-workshop.github.io) give a good overview. Our other publications (below) dive into the details of the optimizations and bottlenecks of current host CPUs.

Without optimization, essent will generate a simulator that is a very literal translation of the firrtl design. Essent flattens the design, and typically represents each firrtl statement with a single line of C++. Most signals are ephemeral and are locally scoped, which gives the compiler the maximum flexibility to optimize them. Signals that must persist between cycles, such as state elements (registers or memories) or external IOs, are declared in structs which match the module hierarchy. Some optimizations require additional signals to persist between cycles, and these variables are declared effectively globally. Long chains of simple connect statements (no other modifications to signals) will be compressed down to just the chain endpoints. Without optimization, each register has two variables associated with it, and they represent the current value and the next value of the register (two-phase update).


Running essent
--------------------------------------------------------------------------------

Essent is written in Scala, which runs on the JVM. To run essent, it''s easiest to use the included `essent` bash script, which launches the JVM appropriately with `essent.jar` (after building it with `sbt assembly`). For the optimizations, essent uses optimization levels like a compiler, so a higher optimization level includes all optimizations from lower levels.

+ `O0` - All optimizations disabled, except compressing out long chains of connect statements.
+ `O1` - When possible, registers will be represented by only one variable instead of two (single-phase update).
+ `O2` - Muxes are represented with `if/else` blocks instead of ternary statements `?`. As many signals as possible are pulled into the if or else blocks. If both the if and else blocks will be trivially one statement, the optimization will not be performed.
+ `O3` - Attempts to exploit low activity factors by reusing results from the previous cycle. The design will be partitioned, and each partition will get its own eval function. If none of the inputs to a partition change, its outputs will be reused. These partitions can include state elements.


Example invocations:

    $ ./essent --help
    $ ./essent -O1 my_design.fir


Interfacing with the generated code
--------------------------------------------------------------------------------

Essent will generate a single `.h` file, with the name of the firrtl circuit. We recommend writing a single `.cc` file to harness the design. Essent uses templated types `UInt` and `SInt` to represent their corresponding firrtl types, and these types are defined in the companion [firrtl-sig](https://github.com/ucsc-vama/firrtl-sig) repo. The harness file should: include the appropriate headers (UInt, SInt, and design''s .h file), instantiate the design, and call `eval` on it for the desired number of cycles. The design will automatically randomly initialize itself when the object is created. Reset is typically an input to the circuit. This version of essent does not support multiple clocks or any sort of logic on clock signals.

A call to the eval function for a design progresses the design by at most one cycle, and takes three boolean arguments:

+ `update_registers` - If true, all state elements will be updated to their new value at the end of eval''s invocation. If false, the state elements will not be updated, but the rest of the computation will be performed. This choice is helpful when communicating to outside the design, especially if the external paths are combinational.
+ `verbose` - If true, print statements will print their results. If false, their output will be suppressed.
+ `done_reset` - Sometimes during the reset process, some functionality can be triggered. When done_reset is false, prints and stops (assertions) will not be triggered.

Example harness snippet:
```c++
#include "MyDesign.h"

int main() {
  MyDesign* dut = new MyDesign;
  // Reset and flush design
  dut->reset = UInt<1>(1);
  dut->eval(false, false, false);
  for (int i = 0; i < 5; i++) {
    dut->eval(true, false, false);
  dut->reset = UInt<1>(0);
  dut->eval(false, false, false);
  // Actual simulation for 10k cycles
  for (int i = 0; i < 10000; i++) {
    dut->eval(true, false, true);
  delete dut;
}
```

Compiling everything
--------------------------------------------------------------------------------

Since essent emits a single header file for a firrtl circuit, the entire simulator is typically produced by a single compilation. Be sure the `firrtl-sig` directory is in the include path.

An example compile command:

    $ g++ -O3 -std=c++11 -I./firrtl-sig design-harness.cc -o simulator
    
On macOS, when using clang, we also found `-fno-slp-vectorize` to improve compile time for large designs, and `-fbracket-depth=1024` allows it to handle designs with deeply nested muxes.

Running with waveform
--------------------------------------------------------------------------------
To generate waveform with ESSENT you can choose either format , VCD or FST and then you can view using gtkwave waveform viewer.

```
Install gtkwave by entering the following commands in the terminal:

sudo apt update
sudo apt install gtkwave
```
Compile: 
+ `withVCD` - This flag enabled generates waveform in VCD format , which can be viewed using gtkwave; disabled by default 
+ `withFST` - This flag enabled generates waveform in FST format , which can be viewed using gtkwave; disabled by default

Example invocations:

```
    $ ./essent -O3 -withVCD my_design.fir
```

Requitered update in Harness file:

Before we start the simulation , we need to add the below to the testbench file, which generates the header part of the VCD or FST. 

  top->genWaveHeader();
   
Running:
We do not need any extra argument to run with VCD , it is same as running essent without VCD.

with FST:
Please install vcd2fst before we run with FST.
Instead of going into generating FST from scratch, we are using vcd2fst tool to convert our VCD related data into streams and compress parallely to generate 
in a form of FST format, which is 135x smaller than VCD file. 
```

clang++ -O3 -std=c++11 -fno-slp-vectorize -fbracket-depth=1024 -Iriscv/include -I../firrtl-sig emulator.cc -o emulator_fst -Lriscv/lib -Wl,-rpath,riscv/lib -lfesvr -lpthread

./emulator_fst dhrystone.riscv | **vcd2fst -p -v /dev/stdin -f** dump_mydesign.fst"
```


Examples
--------------------------------------------------------------------------------
We provide examples showing how essent can be integrated in [Rocket Chip](https://github.com/ucsc-vama/essent-rocket-demo) and [other projects](https://github.com/ucsc-vama/essent-chisel-gallery).


Contributors
--------------------------------------------------------------------------------
The ESSENT project, including supporting infrastructure beyond this repo, has benefited from contributions by:
+ Scott Beamer
+ Priyanka Dutta
+ Thomas Nijssen
+ Krishna Pandian
+ Jinsung Park
+ Haoyuan Wang
+ Kyle Zhang


Publications
--------------------------------------------------------------------------------

**Efficiently Exploiting Low Activity Factors to Accelerate RTL Simulation**  
Scott Beamer and David Donofrio  
_Design Automation Conference (DAC), San Francisco, July 2020_  
(preferred way to cite codebase)

**A Case for Accelerating Software RTL Simulation**  
Scott Beamer  
_IEEE Micro, 2020_

**ESSENT: A High-Performance RTL Simulator**  
Scott Beamer, Thomas Nijssen, Krishna Pandian, Kyle Zhang  
_Workshop on Open-Source EDA Technology (WOSET), at International Conference on Computer-Aided Design (ICCAD), 2021_

Legal
--------------------------------------------------------------------------------

Essential Signal Simulation Enabled by Netlist Transforms (ESSENT) Copyright (c) 2019, The Regents of the University of California, through Lawrence Berkeley National Laboratory (subject to receipt of any required approvals from the U.S. Dept. of Energy). All rights reserved.

If you have questions about your rights to use or distribute this software, please contact Berkeley Lab''s Intellectual Property Office at IPO@lbl.gov.

NOTICE. This Software was developed under funding from the U.S. Department of Energy and the U.S. Government consequently retains certain rights. As such, the U.S. Government has been granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, distribute copies to the public, prepare derivative works, and perform publicly and display publicly, and to permit other to do so.
', '0', 'https://api.github.com/repos/ucsc-vama/essent/releases{/id}', '1', NULL, '1048', 'git@github.com:ucsc-vama/essent.git', '153', 'https://api.github.com/repos/ucsc-vama/essent/stargazers', 'https://api.github.com/repos/ucsc-vama/essent/statuses/{sha}', '8', 'https://api.github.com/repos/ucsc-vama/essent/subscribers', 'https://api.github.com/repos/ucsc-vama/essent/subscription', 'https://github.com/ucsc-vama/essent', 'https://api.github.com/repos/ucsc-vama/essent/tags', 'https://api.github.com/repos/ucsc-vama/essent/teams', 'https://api.github.com/repos/ucsc-vama/essent/git/trees{/sha}', 'ucsc', '2025-02-27 11:00:21+00', 'https://api.github.com/repos/ucsc-vama/essent', 'public', '153', '153', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-REAL/HOC/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-REAL/HOC/assignees{/user}', 'https://api.github.com/repos/UCSC-REAL/HOC/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-REAL/HOC/branches{/branch}', 'https://github.com/UCSC-REAL/HOC.git', NULL, 'https://api.github.com/repos/UCSC-REAL/HOC/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-REAL/HOC/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/HOC/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/HOC/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-REAL/HOC/contents/{+path}', NULL, '["zwzhu-d"]', 'https://api.github.com/repos/UCSC-REAL/HOC/contributors', '2021-02-10 21:41:40+00', 'main', 'https://api.github.com/repos/UCSC-REAL/HOC/deployments', NULL, '0', 'https://api.github.com/repos/UCSC-REAL/HOC/downloads', 'https://api.github.com/repos/UCSC-REAL/HOC/events', '0', '27', '27', 'https://api.github.com/repos/UCSC-REAL/HOC/forks', 'UCSC-REAL/HOC', 'https://api.github.com/repos/UCSC-REAL/HOC/git/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/HOC/git/refs{/sha}', 'https://api.github.com/repos/UCSC-REAL/HOC/git/tags{/sha}', 'git://github.com/UCSC-REAL/HOC.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-REAL/HOC/hooks', 'https://github.com/UCSC-REAL/HOC', '8', '0', 'https://api.github.com/repos/UCSC-REAL/HOC/issues/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/HOC/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-REAL/HOC/issues{/number}', 'https://api.github.com/repos/UCSC-REAL/HOC/keys{/key_id}', 'https://api.github.com/repos/UCSC-REAL/HOC/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-REAL/HOC/languages', 'mit', NULL, 'https://api.github.com/repos/UCSC-REAL/HOC/merges', 'https://api.github.com/repos/UCSC-REAL/HOC/milestones{/number}', NULL, 'HOC', 'MDEwOlJlcG9zaXRvcnkzMzc4NjE0MjU=', 'https://api.github.com/repos/UCSC-REAL/HOC/notifications{?since,all,participating}', '1', '1', '1', 'UCSC-REAL', 0.86, '0', NULL, 'https://api.github.com/repos/UCSC-REAL/HOC/pulls{/number}', '2023-05-17 07:57:04+00', '# Clusterability as an Alternative to Anchor Points When Learning with Noisy Labels (ICML''21)

**[Update 5/17/2023]** Hoc is a module of [Docta](https://github.com/Docta-ai/docta) now!
- A doctor for your data
- An advanced data-centric AI platform that offers a comprehensive range of services aimed at detecting and rectifying issues in your data.

----------------


This code is a PyTorch implementation of the paper:

Zhaowei Zhu, Yiwen Song, and Yang Liu, "Clusterability as an Alternative to Anchor Points When Learning with Noisy Labels," https://proceedings.mlr.press/v139/zhu21e.html.

# Demo

http://peers.ai/

## Prerequisites
Python 3.6.6

PyTorch 1.3.0

Torchvision 0.4.1

Datasets will be downloaded to ./data/.

## Run HOC + forward loss correction
On CIFAR-10 with instance 0.6 noise. 

```
export CUDA_VISIBLE_DEVICES=0 && nohup python -u main.py --pre_type image --dataset cifar10 --loss fw --label_file_path ./data/IDN_0.6_C10_0.pt> ./out/test10.out &
```

On CIFAR-10 with real-world human-annotated labels

```
export CUDA_VISIBLE_DEVICES=0 && nohup python -u main.py --pre_type image --dataset cifar10 --loss fw --label_file_path ./data/noise_label_human.pt> ./out/test10.out &
```

On CIFAR-100 with instance 0.6 noise. 

```
export CUDA_VISIBLE_DEVICES=1 && nohup python -u main.py --pre_type image --dataset cifar100 --loss fw --label_file_path ./data/IDN_0.6_C100_0.pt> ./out/test100.out &
```

## Real-world human-annotated CIFAR-10
We collected them from Amazon Mechanical Turk (MTurk) and students at UC Santa Cruz in February 2020. We only collected one annotation for each image at the cost of ¢10 per image. The label file is available at ./data/noise_label_human.pt.


## Minimal implementation of HOC
G: the number of rounds needed to estimate the consensus probabilities (See details in Algorithm 1 [1])
max_iter: the maximum number of iterations to get an estimate of T 
```
CUDA_VISIBLE_DEVICES=0 python main_min.py --G 50 --max_iter 1500
```

## Run with three noisy labels
Save your noisy labels to ./data/test.csv.
Data format: N*3 matrix, where N is the number of instances. For example, a row [0,1,1] means three noisy labels for this instances are respectively 0, 1, and 1. 
Label classes MUST be consecutive integers.
```
python3 main_knwon2nn.py
```
The result of the default test case is 
```
[[87.7 12.3]
 [14.4 85.6]]
 ```

## Reference
```

@InProceedings{zhu2021clusterability,
  title = 	 {Clusterability as an Alternative to Anchor Points When Learning with Noisy Labels},
  author =       {Zhu, Zhaowei and Song, Yiwen and Liu, Yang},
  booktitle = 	 {Proceedings of the 38th International Conference on Machine Learning},
  pages = 	 {12912--12923},
  year = 	 {2021},
  editor = 	 {Meila, Marina and Zhang, Tong},
  volume = 	 {139},
  series = 	 {Proceedings of Machine Learning Research},
  month = 	 {18--24 Jul},
  publisher =    {PMLR},
  pdf = 	 {http://proceedings.mlr.press/v139/zhu21e/zhu21e.pdf},
  url = 	 {https://proceedings.mlr.press/v139/zhu21e.html}
}

```
', '0', 'https://api.github.com/repos/UCSC-REAL/HOC/releases{/id}', '1', NULL, '40896', 'git@github.com:UCSC-REAL/HOC.git', '26', 'https://api.github.com/repos/UCSC-REAL/HOC/stargazers', 'https://api.github.com/repos/UCSC-REAL/HOC/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-REAL/HOC/subscribers', 'https://api.github.com/repos/UCSC-REAL/HOC/subscription', 'https://github.com/UCSC-REAL/HOC', 'https://api.github.com/repos/UCSC-REAL/HOC/tags', 'https://api.github.com/repos/UCSC-REAL/HOC/teams', 'https://api.github.com/repos/UCSC-REAL/HOC/git/trees{/sha}', 'ucsc', '2024-01-26 14:02:04+00', 'https://api.github.com/repos/UCSC-REAL/HOC', 'public', '26', '26', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/branches{/branch}', 'https://github.com/UCSC-VLAA/RobustCNN.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/contents/{+path}', NULL, '["cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/contributors', '2022-06-06 20:53:03+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/deployments', '[ICLR 2023] This repository includes the official implementation our paper "Can CNNs Be More Robust Than Transformers?"', '0', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/downloads', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/events', '0', '13', '13', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/forks', 'UCSC-VLAA/RobustCNN', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/git/tags{/sha}', 'git://github.com/UCSC-VLAA/RobustCNN.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/hooks', 'https://github.com/UCSC-VLAA/RobustCNN', '9', '0', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/languages', 'mit', NULL, 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/merges', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/milestones{/number}', NULL, 'RobustCNN', 'R_kgDOHdZmaw', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/notifications{?since,all,participating}', '0', '0', '1', 'UCSC-VLAA', 0.88, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/pulls{/number}', '2023-01-23 01:49:12+00', '# Can CNNs Be More Robust Than Transformers?  
This is a PyTorch/PyTorch-XLA implementation of the ICLR''23 paper  [Can CNNs Be More Robust Than Transformers?](https://arxiv.org/abs/2206.03452).
It can run on both GPU or TPU devices (see [TRAIN](https://github.com/UCSC-VLAA/RobustCNN/blob/main/TRAIN.md)/[TEST](https://github.com/UCSC-VLAA/RobustCNN/blob/main/TEST.md) instructions).
Our implementation is heavily based on the bits_and_tpu branch of [TIMM](https://github.com/rwightman/pytorch-image-models/tree/bits_and_tpu).

<div align="center">
  <img src="teaser.png"/>
</div>


## Introduction
The recent success of Vision Transformers is shaking the long dominance of Convolutional Neural Networks (CNNs) in 
image recognition for a decade. Specifically, in terms of robustness on out-of-distribution samples, 
recent research finds that Transformers are inherently more robust than CNNs, regardless of different training setups. 
Moreover, it is believed that such superiority of Transformers should largely be credited to 
their self-attention-like architectures per se. 
In this work, we question that belief by closely examining the design of Transformers. 
Our findings lead to three highly effective architecture designs for boosting robustness, 
yet simple enough to be implemented in several lines of code, 
namely a) patchifying input images, b) enlarging kernel size, and c) reducing activation layers and normalization layers. 
Bringing these components together, we are able to build pure CNN architectures without any attention-like operations 
that is as robust as, or even more robust than, Transformers. 
We hope this work can help the community better understand the design of robust neural architectures.


## Installation

This repo is a modification on the bits_and_tpu branch of [TIMM](https://github.com/rwightman/pytorch-image-models/tree/bits_and_tpu) repo. 
Installation and preparation follow that repo.

Note that this repo is compatible with both GPU and TPU. If you want to run the code on Google Cloud TPU, here are some documents you may find helpful:
[Google Cloud User''s Guide](https://cloud.google.com/tpu/docs/pytorch-xla-ug-tpu-vm) and [TIMM bits README](https://github.com/rwightman/pytorch-image-models/blob/bits_and_tpu/timm/bits/README.md)

## Data preparation

### Clean Dataset

Download and extract ImageNet train and val images from http://image-net.org/.
The directory structure is the [standard layout](https://pytorch.org/docs/stable/torchvision/datasets.html#imagefolder) for the torchvision, and the training and validation data is expected to be in the `train` folder and `val` folder respectively:

```
/path/to/imagenet/
  train/
    class1/
      img1.jpeg
    class2/
      img2.jpeg
  val/
    class1/
      img3.jpeg
    class/2
      img4.jpeg
```

### Out-of-distribution Dataset

Download and extract [Stylized-ImageNet](https://github.com/rgeirhos/Stylized-ImageNet), [ImageNet-C](https://github.com/hendrycks/robustness), 
[ImageNet-R](https://github.com/hendrycks/imagenet-r), [ImageNet-Sketch](https://github.com/HaohanWang/ImageNet-Sketch) val images:

```
/path/to/datasets/
    class1/
      img1.jpeg
    class/2
      img2.jpeg
```

## Usage

### Training Instructions
The training instructions are in [TRAIN.md](TRAIN.md).

### Testing Instructions
The testing instructions are in [TEST.md](TEST.md).

## Pretrained models

Here are ImageNet-1k trained weights for four model instantiations. All models are trained for 300 epochs with DeiT recipe. 
Please follow the testing script to evaluate them on out-of-distribution dataset.

|                                       |                                          Pretrained Model                                           | ImageNet&#8593; | Stylized-ImageNet&#8593;  | ImageNet-C&#8595;  | ImageNet-R&#8593;  | ImageNet-Sketch&#8593;  |
| ------------------------------------- | :-------------------------------------------------------------------------------------------------: | :--------------:| :-----------------------: | :----------------: | :----------------: |:----------------------: |
| DeiT-S  (Official Checkpoint)         | [download link](https://github.com/facebookresearch/deit)                                           |       79.8      |           16.2            |        42.8        |        41.9        |          29.1           |
| Robust-ResNet-DW-Small                | [download link](https://drive.google.com/file/d/1cbS3NGkkzKw2Uhq8ATMbsoGjIx8zhwgv/view?usp=sharing) |       79.4      |           18.6            |        42.3        |        45.9        |          33.0           |
| Robust-ResNet-Inverted-DW-Small       | [download link](https://drive.google.com/file/d/1g551TsZmVrSZ4BXje9RcT7gG_UjjFQmO/view?usp=sharing) |       79.0      |           19.5            |        42.1        |        45.9        |          32.8           |
| Robust-ResNet-Up-Inverted-DW-Small    | [download link](https://drive.google.com/file/d/1lQ0zPqO6nmtXWt5r9d-M4k_GHVeW41Qy/view?usp=sharing) |       79.2      |           20.2            |        40.9        |        48.7        |          35.2           |
| Robust-ResNet-Down-Inverted-DW-Small  | [download link](https://drive.google.com/file/d/1gZVclPJXT50F6iAJHUv8Z6wG6C0ZhXds/view?usp=sharing) |       79.9      |           19.3            |        41.6        |        46.0        |          32.8           |



## Acknowledgment

This repo is built on [timm](https://github.com/rwightman/pytorch-image-models). 
And this work is supported by a gift from Open Philanthropy, TPU Research Cloud (TRC) program, and Google Cloud Research Credits program.


## Citation

```
@inproceedings{wang2022robustcnn,
  title     = {Can CNNs Be More Robust Than Transformers?}, 
  author    = {Wang, Zeyu and Bai, Yutong and Zhou, Yuyin and Xie, Cihang},
  booktitle = {International Conference on Learning Representations},
  year      = {2023},
}
```
', '0', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/releases{/id}', '1', NULL, '295', 'git@github.com:UCSC-VLAA/RobustCNN.git', '143', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/stargazers', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/subscribers', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/subscription', 'https://github.com/UCSC-VLAA/RobustCNN', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/tags', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/teams', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN/git/trees{/sha}', 'ucsc', '2024-10-26 14:56:56+00', 'https://api.github.com/repos/UCSC-VLAA/RobustCNN', 'public', '143', '143', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/branches{/branch}', 'https://github.com/UCSC-VLAA/MedTrinity-25M.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/contents/{+path}', NULL, '["cezhou3","yunfeixie233","Chtholly17","HeartyHaven"]', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/contributors', '2024-08-06 02:19:37+00', 'master', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/deployments', '[ICLR 2025] This is the official repository of our paper "MedTrinity-25M: A Large-scale Multimodal Dataset with Multigranular Annotations for Medicine“', '0', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/downloads', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/events', '0', '18', '18', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/forks', 'UCSC-VLAA/MedTrinity-25M', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/git/tags{/sha}', 'git://github.com/UCSC-VLAA/MedTrinity-25M.git', '0', '1', '1', '0', '1', '0', 'https://yunfeixie233.github.io/MedTrinity-25M/', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/hooks', 'https://github.com/UCSC-VLAA/MedTrinity-25M', '10', '0', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/merges', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/milestones{/number}', NULL, 'MedTrinity-25M', 'R_kgDOMfwrjw', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/notifications{?since,all,participating}', '7', '7', '1', 'UCSC-VLAA', 0.93, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/pulls{/number}', '2025-02-26 08:52:57+00', '# <div align="center"> MedTrinity-25M: A Large-scale Multimodal Dataset with Multigranular Annotations for Medicine <div>


<div align="center">
  <a href="https://github.com/UCSC-VLAA/MedTrinity-25M"><img src="https://img.shields.io/static/v1?label=MedTrinity-25M Code&message=Github&color=blue&logo=github-pages"></a>  
  <a href="https://yunfeixie233.github.io/MedTrinity-25M"><img src="https://img.shields.io/static/v1?label=Project%20Page&message=Github&color=blue&logo=github-pages"></a>  
  <a href="https://huggingface.co/datasets/UCSC-VLAA/MedTrinity-25M"><img src="https://img.shields.io/static/v1?label=MedTrinity-25M&message=HF&color=yellow"></a>  
  <a href="https://arxiv.org/abs/2408.02900"><img src="https://img.shields.io/static/v1?label=Paper&message=Arxiv:MedTrinity-25M&color=red&logo=arxiv"></a>  
</div>

---

> [**MedTrinity-25M: A Large-scale Multimodal Dataset with Multigranular Annotations for Medicine**](https://yunfeixie233.github.io/MedTrinity-25M/)<br>
> [Yunfei Xie*](https://yunfeixie233.github.io/), [Ce Zhou*](https://github.com/Skylight-Lark),
> [Lang Gao*](https://heartyhaven.github.io/), [Juncheng Wu*](https://chtholly17.github.io/),
> [Xianhang Li](https://xhl-video.github.io/xianhangli/), [Hong-Yu Zhou](https://zhouhy.org/),
> [Sheng Liu](https://shengliu66.github.io/), [Lei Xing](https://profiles.stanford.edu/lei-xing),
> [James Zou](https://www.james-zou.com/),
> [Cihang Xie](https://cihangxie.github.io/),
> [Yuyin Zhou](https://yuyinzhou.github.io/)

---

## 📢 Breaking News
- **[🆕💥 August 31, 2024] Detailed tutorial for deploying MedTrinity now available at [HuggingFace](https://huggingface.co/datasets/UCSC-VLAA/MedTrinity-25M#dataset-download-and-preparation). We apologize for any previous inconvenience.**
- [📄💥 August 7, 2024] Our [arXiv paper](https://www.arxiv.org/abs/2408.02900) is released.
- [💾 July 21, 2024] Full dataset released.
- [💾 June 16, 2024] Demo dataset released.

Star 🌟 us if you think it is helpful!!

---

## 🚀 Dataset

### Dataset construction pipeline
<p align="center">
  <img src="images/pipeline.png" width="500">
</p>

1) Data processing: extracting essential information from collected data, including metadata integration to generate coarse captions, ROI locating, and medical knowledge collection.
2) Multigranular textual description generation: using this information to prompt MLLMs to generate fine-grained captions.

### Statistical overview of MedTrinity-25M

<p align="center">
  <img src="images/dataset.png" width="500">
</p>

### Statistics of MedTrinity-25M
You can view detailed statistics of MedTrinity-25M from [this link](https://docs.google.com/spreadsheets/d/1gdVahxKKB31v3K3vBq8sK6UkimzZAT1zM1kxeJKqKq4/edit?usp=sharing). 

**Note:** sometimes a single image contains multiple biological structures. The data only reflect the number of samples in which a specific biological structure is present.

### Dataset Download

 Dataset | 🤗 Huggingface Hub | 
| --- | ---: |
| MedTrinity-25M | [UCSC-VLAA/MedTrinity-25M](https://huggingface.co/datasets/UCSC-VLAA/MedTrinity-25M) |

---

## 🏆 Results
<p align="center">
  <img src="images/result.png" width="900">
</p>

---

## 💬 Quick Start

### Install

Using Linux system,

1. Clone this repository and navigate to the folder

```bash
git clone https://github.com/UCSC-VLAA/MedTrinity-25M.git
```

2. Install Package

```shell
conda create -n llava-med++ python=3.10 -y
conda activate llava-med++
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
```

3. Install additional packages for training cases

```shell
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
pip install git+https://github.com/bfshi/scaling_on_scales.git
pip install multimedeval
```

### Upgrade to latest code base

```shell
git pull
pip install -e .

# if you see some import errors when you upgrade,
# please try running the command below (without #)
# pip install flash-attn --no-build-isolation --no-cache-dir
```

### 🤖 Model-Zoo

The following table provides an overview of the available models in our zoo. For each model, you can find links to its Hugging Face page or Google drive folder.

| Model Name                            |                             Link                              | Summary                                                                                                           |
|---------------------------------------|:--------------------------------------------------------------------------:|-------------------------------------------------------------------------------------------------------------------|
| LLaVA-Med++ (VQA-RAD) | [Google Drive](https://drive.google.com/drive/folders/1jY_LPsodnFrDvVRvMIQ9g0RAZKS8Qg0k?usp=drive_link)  | Pretrained on [LLaVA-Med Data](https://github.com/microsoft/LLaVA-Med?tab=readme-ov-file) and MedTrinity-25M (specifically the VQA-RAD training set subset), finetuning on VQA-RAD training set. |
| LLaVA-Med++ (SLAKE) | [Google Drive](https://drive.google.com/drive/folders/15pLmRAtJZ4Gtln6zRJZNdvR2Q7TnphVt?usp=drive_link)  | Pretrained on [LLaVA-Med Data](https://github.com/microsoft/LLaVA-Med?tab=readme-ov-file) and MedTrinity-25M (specifically the SLAKE training set subset), finetuning on SLAKE training set. |
| LLaVA-Med++ (PathVQA) | [Google Drive](https://drive.google.com/drive/folders/1PoJreastQ5w5IJSyXdFhDbsEeFKlZ3w9?usp=drive_link)  | Pretrained on [LLaVA-Med Data](https://github.com/microsoft/LLaVA-Med?tab=readme-ov-file) and MedTrinity-25M (specifically the PathVQA training set subset), finetuning on PathVQA training set. |
| LLaVA-Med-Captioner     |   [Hugging Face](https://huggingface.co/UCSC-VLAA/LLaVA-Med-Captioner)    | Captioner for generating multigranular annotations fine-tuned on [MedTrinity-Instruct-200K (Coming soon)](https://github.com/UCSC-VLAA/MedTrinity-25M). |

### Train and Eval LLaMA-Med++
First, you need to download the base model [LLaVA-Meta-Llama-3-8B-Instruct-FT-S2](https://huggingface.co/MBZUAI/LLaVA-Meta-Llama-3-8B-Instruct-FT-S2) and download the stage1 and stage2 datasets in the [LLaVA-Med](https://github.com/microsoft/LLaVA-Med).
1. Pre-train
```bash
# stage1 training
cd MedTrinity-25M
bash ./scripts/med/llava3_med_stage1.sh

# stage2 training
bash ./scripts/med/llava3_med_stage2.sh
```
2. Finetune
```bash
cd MedTrinity-25M
bash ./scripts/med/llava3_med_finetune.sh
```
3. Eval  
First, you need to download corresponding weight from Model-Zoo and change the path in evaluation script.
Then run:
```bash
cd MedTrinity-25M
bash ./scripts/med/llava3_med_eval_batch_vqa_rad.sh
```

---

## 📜 Citation

If you find MedTrinity-25M useful for your research and applications, please cite using this BibTeX:

```bibtex
@misc{xie2024medtrinity25mlargescalemultimodaldataset,
      title={MedTrinity-25M: A Large-scale Multimodal Dataset with Multigranular Annotations for Medicine}, 
      author={Yunfei Xie and Ce Zhou and Lang Gao and Juncheng Wu and Xianhang Li and Hong-Yu Zhou and Sheng Liu and Lei Xing and James Zou and Cihang Xie and Yuyin Zhou},
      year={2024},
      eprint={2408.02900},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/2408.02900}, 
}
```

---

## 🙏 Acknowledgement
- We thank the Microsoft Accelerate Foundation Models Research Program, the OpenAI Researcher Access Program, TPU Research Cloud (TRC) program, Google Cloud Research Credits program, AWS Cloud Credit for Research program, and Lambda Cloud for supporting our computing needs.                
- Thanks for the codebase of [LLaVA-pp](https://github.com/mbzuai-oryx/LLaVA-pp), [LLaVA-Med](https://github.com/microsoft/LLaVA-Med) and [LLaVA](https://github.com/haotian-liu/LLaVA) we built upon, and our base model [LLaVA-Meta-Llama-3-8B-Instruct-FT-S2](https://huggingface.co/MBZUAI/LLaVA-Meta-Llama-3-8B-Instruct-FT-S2) that has the amazing language capabilities!

---

## Related Projects

- [LLaVA-pp](https://github.com/mbzuai-oryx/LLaVA-pp)
- [LLaVA-Med: Training a Large Language-and-Vision Assistant for Biomedicine in One Day](https://github.com/microsoft/LLaVA-Med)
- [LLaVA](https://github.com/haotian-liu/LLaVA)
', '0', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/releases{/id}', '1', NULL, '1518', 'git@github.com:UCSC-VLAA/MedTrinity-25M.git', '262', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/stargazers', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/subscribers', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/subscription', 'https://github.com/UCSC-VLAA/MedTrinity-25M', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/tags', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/teams', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M/git/trees{/sha}', 'ucsc', '2025-03-03 10:50:18+00', 'https://api.github.com/repos/UCSC-VLAA/MedTrinity-25M', 'public', '262', '262', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/assignees{/user}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/branches{/branch}', 'https://github.com/UCSC-REAL/SimiFeat.git', NULL, 'https://api.github.com/repos/UCSC-REAL/SimiFeat/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/contents/{+path}', NULL, '["zwzhu-d"]', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/contributors', '2021-10-09 03:38:27+00', 'main', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/deployments', NULL, '0', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/downloads', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/events', '0', '14', '14', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/forks', 'UCSC-REAL/SimiFeat', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/git/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/git/refs{/sha}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/git/tags{/sha}', 'git://github.com/UCSC-REAL/SimiFeat.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-REAL/SimiFeat/hooks', 'https://github.com/UCSC-REAL/SimiFeat', '11', '0', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/issues/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-REAL/SimiFeat/issues{/number}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/keys{/key_id}', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/languages', 'other', NULL, 'https://api.github.com/repos/UCSC-REAL/SimiFeat/merges', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/milestones{/number}', NULL, 'SimiFeat', 'R_kgDOGL9X3A', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/notifications{?since,all,participating}', '2', '2', '1', 'UCSC-REAL', 0.95, '0', NULL, 'https://api.github.com/repos/UCSC-REAL/SimiFeat/pulls{/number}', '2023-05-17 07:50:31+00', '# Detecting Corrupted Labels Without Training a Model to Predict

**[Update 5/17/2023]** SimiFeat is a module of [Docta](https://github.com/Docta-ai/docta) now!
- A doctor for your data
- An advanced data-centric AI platform that offers a comprehensive range of services aimed at detecting and rectifying issues in your data.

This code is a PyTorch implementation of the [paper](https://arxiv.org/abs/2110.06283): Detecting Corrupted Labels Without Training a Model to Predict 


## Prerequisites

Python 3.6.9

PyTorch 1.7.1

Torchvision 0.8.2

Full list in ./requirements.txt

Datasets will be downloaded to ./data/.

## Run HOC + Vote Based and Rank Based method

On CIFAR-10 .

```
sh ./test_c10_instance.sh  
```

On CIFAR-100

```
sh ./test_c100_instance.sh  
```
', '0', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/releases{/id}', '1', NULL, '2963', 'git@github.com:UCSC-REAL/SimiFeat.git', '74', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/stargazers', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/subscribers', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/subscription', 'https://github.com/UCSC-REAL/SimiFeat', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/tags', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/teams', 'https://api.github.com/repos/UCSC-REAL/SimiFeat/git/trees{/sha}', 'ucsc', '2025-01-17 16:07:15+00', 'https://api.github.com/repos/UCSC-REAL/SimiFeat', 'public', '74', '74', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('1', '1', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/assignees{/user}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/branches{/branch}', 'https://github.com/UCSC-REAL/cifar-10-100n.git', NULL, 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/contents/{+path}', NULL, '["weijiaheng","zwzhu-d"]', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/contributors', '2021-10-12 21:20:03+00', 'main', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/deployments', 'Human annotated noisy labels for CIFAR-10 and CIFAR-100. The website of CIFAR-N is available at http://www.noisylabels.com/.', '0', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/downloads', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/events', '0', '20', '20', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/forks', 'UCSC-REAL/cifar-10-100n', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/git/commits{/sha}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/git/refs{/sha}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/git/tags{/sha}', 'git://github.com/UCSC-REAL/cifar-10-100n.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/hooks', 'https://github.com/UCSC-REAL/cifar-10-100n', '12', '0', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/issues/comments{/number}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/issues{/number}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/keys{/key_id}', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/languages', 'other', '1', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/merges', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/milestones{/number}', NULL, 'cifar-10-100n', 'R_kgDOGNNPmg', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/notifications{?since,all,participating}', '3', '3', '1', 'UCSC-REAL', 0.95, '0', NULL, 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/pulls{/number}', '2023-05-17 22:57:03+00', '**[Update 5/17/2023]** A [demo](https://github.com/Docta-ai/docta/blob/master/demo/docta_cifar10.ipynb) for automatically detecting label errors on CIFAR-N is availabel at [Docta](https://github.com/Docta-ai/docta) now!
- **Docta**: A **Doc**tor for your da**ta**
- An advanced data-centric AI platform that offers a comprehensive range of services aimed at detecting and rectifying issues in your data.


This repository is the official dataset release and Pytorch implementation of "[Learning with Noisy Labels Revisited: A Study Using Real-World Human Annotations](https://openreview.net/forum?id=TBWA6PLJZQm&referrer=%5BAuthor%20Console%5D(%2Fgroup%3Fid%3DICLR.cc%2F2022%2FConference%2FAuthors%23your-submissions))" accepted by ICLR2022. We collected and published re-annotated versions of the CIFAR-10 and CIFAR-100 data which contains real-world human annotation errors. We show how these noise patterns deviate from the classically assumed ones and what the new challenges are. The website of CIFAR-N is available at [http://www.noisylabels.com/](http://www.noisylabels.com/).

----------------

**Competition:** Please refer to the branch `ijcai-lmnl-2022` for details of 1st Learning with Noisy Labels Challenge in IJCAI 2022. Also available at [http://competition.noisylabels.com/](http://competition.noisylabels.com/).

# Dataloader for CIFAR-N (PyTorch)

### CIFAR-10N 
```python
import torch
noise_file = torch.load(''./data/CIFAR-10_human.pt'')
clean_label = noise_file[''clean_label'']
worst_label = noise_file[''worse_label'']
aggre_label = noise_file[''aggre_label'']
random_label1 = noise_file[''random_label1'']
random_label2 = noise_file[''random_label2'']
random_label3 = noise_file[''random_label3'']
```

### CIFAR-100N 
```python
import torch
noise_file = torch.load(''./data/CIFAR-100_human.pt'')
clean_label = noise_file[''clean_label'']
noisy_label = noise_file[''noisy_label'']
```

# Dataloader for CIFAR-N (Tensorflow)

Note: Image order of tensorflow dataset (tfds.load, binary version of CIFAR) does not match with PyTorch dataloader (python version of CIFAR).

### CIFAR-10N 
```python
import numpy as np
noise_file = np.load(''./data/CIFAR-10_human_ordered.npy'', allow_pickle=True)
clean_label = noise_file.item().get(''clean_label'')
worst_label = noise_file.item().get(''worse_label'')
aggre_label = noise_file.item().get(''aggre_label'')
random_label1 = noise_file.item().get(''random_label1'')
random_label2 = noise_file.item().get(''random_label2'')
random_label3 = noise_file.item().get(''random_label3'')
# The noisy label matches with following tensorflow dataloader
train_ds, test_ds = tfds.load(''cifar10'', split=[''train'',''test''], as_supervised=True, batch_size = -1)
train_images, train_labels = tfds.as_numpy(train_ds) 
# You may want to replace train_labels by CIFAR-N noisy label sets
```

**Reminder:** CIFAR-10N is now available at tensorflow datasets. Please check [here](https://www.tensorflow.org/datasets/catalog/cifar10_n) for more details!

### CIFAR-100N 
```python
import numpy as np
noise_file = np.load(''./data/CIFAR-100_human_ordered.npy'', allow_pickle=True)
clean_label = noise_file.item().get(''clean_label'')
noise_label = noise_file.item().get(''noise_label'')
# The noisy label matches with following tensorflow dataloader
train_ds, test_ds = tfds.load(''cifar100'', split=[''train'',''test''], as_supervised=True, batch_size = -1)
train_images, train_labels = tfds.as_numpy(train_ds) 
# You may want to replace train_labels by CIFAR-N noisy label sets
```

The image order from tfds to pytorch dataloader is given below:
- **image_order_c10.npy:** a numpy array with length 50K, the i-th element denotes the index of i-th unshuffled tfds (binary-version) CIFAR-10 training image in the Pytorch (python-version) ones.
- **image_order_c100.npy:** a numpy array with length 50K, the i-th element denotes the index of i-th unshuffled tfds (binary-version) CIFAR-100 training image in the Pytorch (python-version) ones.


# Training on CIFAR-N with Cross-Entropy (PyTorch)
### CIFAR-10N 
```shell
# NOISE_TYPE: [clean, aggre, worst, rand1, rand2, rand3]
# Use human annotations
CUDA_VISIBLE_DEVICES=0 python3 main.py --dataset cifar10 --noise_type NOISE_TYPE --is_human
# Use the synthetic noise that has the same noise transition matrix as human annotations
CUDA_VISIBLE_DEVICES=0 python3 main.py --dataset cifar10 --noise_type NOISE_TYPE
```

### CIFAR-100N 
```shell
# NOISE_TYPE: [clean100, noisy100]
# Use human annotations
CUDA_VISIBLE_DEVICES=0 python3 main.py --dataset cifar100 --noise_type NOISE_TYPE --is_human
# Use the synthetic noise that has the same noise transition matrix as human annotations
CUDA_VISIBLE_DEVICES=0 python3 main.py --dataset cifar100 --noise_type NOISE_TYPE
```

# Additional dataset information
We include additional side information during the noisy-label collection in <code>side_info_cifar10N.csv</code> and <code>side_info_cifar100N.csv</code>.
A brief introduction of these two files:
- **Image-batch:** a subset of indexes of the CIFAR training images.
- **Worker-id:** the encrypted worker id on Amazon Mechanical Turk.
- **Work-time-in-seconds:** the time (in seconds) a worker spent on annotating the corresponding image batch.
', '0', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/releases{/id}', '1', NULL, '3598', 'git@github.com:UCSC-REAL/cifar-10-100n.git', '172', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/stargazers', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/statuses/{sha}', '5', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/subscribers', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/subscription', 'https://github.com/UCSC-REAL/cifar-10-100n', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/tags', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/teams', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n/git/trees{/sha}', 'ucsc', '2025-01-22 10:53:36+00', 'https://api.github.com/repos/UCSC-REAL/cifar-10-100n', 'public', '172', '172', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/branches{/branch}', 'https://github.com/UCSC-VLAA/SwinMM.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/SwinMM/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/contents/{+path}', NULL, '["Zi-hao-Wei","meijieru","yuyinzhou","cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/contributors', '2023-07-24 06:44:06+00', 'master', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/deployments', '[MICCAI 2023] This repository includes the official implementation our paper "SwinMM: Masked Multi-view with Swin Transformers for 3D Medical Image Segmentation"', '0', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/downloads', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/events', '0', '6', '6', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/forks', 'UCSC-VLAA/SwinMM', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/git/tags{/sha}', 'git://github.com/UCSC-VLAA/SwinMM.git', '0', '1', '1', '0', '1', '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/SwinMM/hooks', 'https://github.com/UCSC-VLAA/SwinMM', '13', '0', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/SwinMM/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/SwinMM/merges', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/milestones{/number}', NULL, 'SwinMM', 'R_kgDOJ-_vOA', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/notifications{?since,all,participating}', '0', '0', '1', 'UCSC-VLAA', 0.91, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/SwinMM/pulls{/number}', '2023-10-13 19:01:28+00', E'# SwinMM: Masked Multi-view with Swin Transformers for 3D Medical Image Segmentation

<p align="center">
  <img src="figures/SwinMMArch.png">
</p>

## Update

*08/13/2023:*

News:

- SwinMM has been included in the MONAI''s [research contribution](https://github.com/Project-MONAI/research-contributions).

## What is SwinMM?

Masked Multi-view with Swin Transformers, dubbed SwinMM, is the first comprehensive multi-view pipeline for self-supervised medical image analysis. SwinMM yields competitive performance, significantly lower training costs, and higher data efficiency compared to recent state-of-the-art models. SwinMM consists of two key components.

### Pretrain

In the pre-training stage, we introduce a masked multi-view encoder that simultaneously trains masked multi-view observations with a diverse set of proxy tasks. These tasks include image reconstruction, rotation, contrastive learning, and a mutual learning paradigm that comprehensively leverages hidden multi-view information from 3D medical data by maximizing the consistency between predictions from different views.

<p align="center">
  <img src="figures/pretrain.png">
</p>

### Finetune

In the fine-tuning stage, a cross-view decoder is developed to aggregate the multi-view information using a novel cross-view attention block.

<p align="center">
  <img src="figures/finetune.png">
</p>

## Pre-trained Models

We present two checkpoints here:

- [pretrained_ckpt.pt](https://drive.google.com/file/d/1VFT1Oz5UGjAaXLdWAAdeD0mVeLyCQ0ry/view?usp=sharing)
- [WORD_finetuned_ckpt.pt](https://drive.google.com/file/d/1GXNE_c2PSyklQ8hdL739TowEZ5_HGOK_/view?usp=sharing)

Here is the sample testing result on WORD

<p align="center">
  <img src="figures/Result.png">
</p>

## Installation

Please check [INSTALL.md](INSTALL.md) for installation instructions.

## Evaluation

Testing can be done using the following scripts. Please change `pretrained_dir` and `pretrained_model_name` according to the path of the checkpoint you would like to test, and change `data_dir` and `json_list` according to the datasets.

```bash
cd WORD
python test_parrallel.py --pretrained_dir ./runs/multiview_101616/ \\
	--pretrained_model_name model.pt \\
	--distributed \\
	--data_dir ./dataset/dataset12_WORD/ \\
	--json_list dataset12_WORD.json
```

## Training

Please check [TRAINING.md](TRAINING.md) for training instructions.

## Acknowledgment

This work is partially supported by Google Cloud Research Credits program.
This Repo is based on [SwinUNETR](https://github.com/Project-MONAI/research-contributions/tree/main/SwinUNETR), [MONAI](https://monai.io/) and [bagua](https://github.com/BaguaSys/bagua).

## Citation

If you find this repository helpful, please consider citing:

```
@inproceedings{wang2023SwinMM,
  title     = {SwinMM: Masked Multi-view with Swin Transformers for 3D Medical Image Segmentation},
  author    = {Wang, Yiqing and Li, Zihan and Mei, Jieru and Wei, Zihao and Liu, Li and Wang, Chen and Sang, Shengtian and Yuille, Alan and Xie, Cihang and Zhou, Yuyin},
  booktitle = {MICCAI},
  year      = {2023}
}
```
', '0', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/releases{/id}', '1', NULL, '706', 'git@github.com:UCSC-VLAA/SwinMM.git', '103', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/stargazers', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/subscribers', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/subscription', 'https://github.com/UCSC-VLAA/SwinMM', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/tags', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/teams', 'https://api.github.com/repos/UCSC-VLAA/SwinMM/git/trees{/sha}', 'ucsc', '2024-12-17 09:50:23+00', 'https://api.github.com/repos/UCSC-VLAA/SwinMM', 'public', '103', '103', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/masc-ucsc/hdlagent/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/hdlagent/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/hdlagent/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/hdlagent/branches{/branch}', 'https://github.com/masc-ucsc/hdlagent.git', NULL, 'https://api.github.com/repos/masc-ucsc/hdlagent/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/hdlagent/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hdlagent/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hdlagent/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/hdlagent/contents/{+path}', NULL, '["markzakharov","rabieifk","renau","jyrj","renovatebot","gavinlebo","milind7777"]', 'https://api.github.com/repos/masc-ucsc/hdlagent/contributors', '2024-02-01 01:57:17+00', 'main', 'https://api.github.com/repos/masc-ucsc/hdlagent/deployments', ' LLM Agent for Hardware Description Language', '0', 'https://api.github.com/repos/masc-ucsc/hdlagent/downloads', 'https://api.github.com/repos/masc-ucsc/hdlagent/events', '0', '8', '8', 'https://api.github.com/repos/masc-ucsc/hdlagent/forks', 'masc-ucsc/hdlagent', 'https://api.github.com/repos/masc-ucsc/hdlagent/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hdlagent/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/hdlagent/git/tags{/sha}', 'git://github.com/masc-ucsc/hdlagent.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/hdlagent/hooks', 'https://github.com/masc-ucsc/hdlagent', '14', '0', 'https://api.github.com/repos/masc-ucsc/hdlagent/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hdlagent/issues/events{/number}', NULL, 'https://api.github.com/repos/masc-ucsc/hdlagent/issues{/number}', 'https://api.github.com/repos/masc-ucsc/hdlagent/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/hdlagent/labels{/name}', 'Python', 'https://api.github.com/repos/masc-ucsc/hdlagent/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/masc-ucsc/hdlagent/merges', 'https://api.github.com/repos/masc-ucsc/hdlagent/milestones{/number}', NULL, 'hdlagent', 'R_kgDOLMVqOw', 'https://api.github.com/repos/masc-ucsc/hdlagent/notifications{?since,all,participating}', '5', '5', '1', 'masc-ucsc', 0.88, '0', NULL, 'https://api.github.com/repos/masc-ucsc/hdlagent/pulls{/number}', '2025-03-04 06:28:41+00', '
AI Coding Agent for specification to hardware code.

The HDL Agent uses self-reflection, context, and grounding with EDA tools to generate hardware description language (HDL) code from specifications.


## Installation instructions
### **Prerequisites**

- **Python 3.8** or higher
- **[Poetry](https://python-poetry.org/docs/#installation)** for managing dependencies
- **Yosys**: Required for benchmarking and testing

Install with python poetry:
```
poetry install
```

If updating hdlagent, you may need to update poetry dependencies too:
```
poetry lock
poetry install
```

Set the required keys (depends on the model that you use)
```
export OPENAI_API_KEY=.....
export SAMBANOVA_API_KEY=....
```
## Usage
The `hdlagent` script provides several commands to help you generate HDL code from specifications, run benchmarks, build code, and more.

### General Help
To display general help with a list of all commands:
```
poetry run ../hdlagent/cli_agent.py --help
```
### **Available Commands**

Here are the available commands:
- **start** - Start a new spec from a simple explanation
- **bench** - Run benchmarks using YAML specification files
- **build** - Build the code from spec files
- **list-models** - List available models
- **log** - Collect and display logs from previous runs

### **`start` Command**
**Description**: Start a new structured spec file from a plain text problem description.
```
poetry run hdlagent/cli_agent.py start [options] <text_file1> [<text_file2> ...]
```
Example:
```
poetry run hdlagent/cli_agent.py start description.txt
```
Options:

- `--llm LLM_MODEL`: Specify the LLM model to use (default: `gpt-4o`)
- `--lang {Verilog,Chisel,PyRTL,DSLX}`: Language for code generation (default: `Verilog`)
- Additional options are available; run `hdlagent start --help` for more details.

### **`bench` Command**
**Description**: Run benchmarks using YAML specification files.

Usage:
```
poetry run hdlagent/cli_agent.py bench [options] <spec_file1.yaml> [<spec_file2.yaml> ...]
```
Example:
```
poetry run hdlagent/cli_agent.py bench sample/RCA_spec.yaml
```
Options:

- `--skip_completed`: Skip already generated tests
- `--llm LLM_MODEL`: Specify the LLM model to use
- Additional options are available; run `hdlagent bench --help` for more details.
### **`build` Command**
**Description**: Build the HDL code (and test benches) from spec files.

Usage:
```
poetry run hdlagent/cli_agent.py build [options] [spec_file1.yaml spec_file2.yaml ...]
```
If no spec files are specified, it will find all *spec.yaml files in the working directory.

Example:
```
poetry run hdlagent/cli_agent.py build
```
Options:

- `--llm LLM_MODEL`: Specify the LLM model to use
- Additional options are available; `run hdlagent build --help` for more details.
### **`list-models` Command**
**Description**: List the existing models available for use.

Usage:
```
poetry run hdlagent/cli_agent.py list-models [options]
```
Example:
```
poetry run hdlagent/cli_agent.py list-models
```
### **`log` Command**
**Description**: Collect and save RESULTS lines from previous runs, or display details of a specific run.

Usage:
```
poetry run hdlagent/cli_agent.py log [options] [benchmark_name]
```
Examples:

 - Collect all RESULTS lines:
   ```
   poetry run hdlagent/cli_agent.py log
   ```
 - List all available runs:
   ```
   poetry run hdlagent/cli_agent.py log --list-runs
   ```
 - Display details of a specific run:
   ```
   poetry run hdlagent/cli_agent.py log RCA_spec.yaml
   ```
 - Filter logs:
   ```
   poetry run hdlagent/cli_agent.py log --status=failed --date-from=2023-10-01 --date-to=2023-10-05
   ```

Options:

- `--output-file OUTPUT_FILE`: Specify the output file to save collected RESULTS lines.
- `--list-runs`: List all available runs and their timestamps.
- `--status {all,success,failed}`: Filter logs by run status (default: all).
- `--date-from YYYY-MM-DD`: Show logs from this date.
- `--date-to YYYY-MM-DD`: Show logs up to this date.
- `--top_k TOP_K_VALUE`: Filter logs where top_k is greater than or equal to the specified value.

### Run a Simple test from json

```
cd sample
poetry run ../hdlagent/hdlagent.py --supp_context  --llm gpt-4-turbo-preview --bench ./sample-test.json
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request on GitHub.

', '0', 'https://api.github.com/repos/masc-ucsc/hdlagent/releases{/id}', '1', NULL, '1750', 'git@github.com:masc-ucsc/hdlagent.git', '19', 'https://api.github.com/repos/masc-ucsc/hdlagent/stargazers', 'https://api.github.com/repos/masc-ucsc/hdlagent/statuses/{sha}', '20', 'https://api.github.com/repos/masc-ucsc/hdlagent/subscribers', 'https://api.github.com/repos/masc-ucsc/hdlagent/subscription', 'https://github.com/masc-ucsc/hdlagent', 'https://api.github.com/repos/masc-ucsc/hdlagent/tags', 'https://api.github.com/repos/masc-ucsc/hdlagent/teams', 'https://api.github.com/repos/masc-ucsc/hdlagent/git/trees{/sha}', 'ucsc', '2025-01-28 06:55:13+00', 'https://api.github.com/repos/masc-ucsc/hdlagent', 'public', '19', '19', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/EVP/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/EVP/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/EVP/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/EVP/branches{/branch}', 'https://github.com/UCSC-VLAA/EVP.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/EVP/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/EVP/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/EVP/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/EVP/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/EVP/contents/{+path}', NULL, '["jywu511","xhl-video","cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/EVP/contributors', '2022-11-16 01:26:38+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/EVP/deployments', '[TMLR''24] This repository includes the official implementation our paper "Unleashing the Power of Visual Prompting At the Pixel Level"', '0', 'https://api.github.com/repos/UCSC-VLAA/EVP/downloads', 'https://api.github.com/repos/UCSC-VLAA/EVP/events', '0', '4', '4', 'https://api.github.com/repos/UCSC-VLAA/EVP/forks', 'UCSC-VLAA/EVP', 'https://api.github.com/repos/UCSC-VLAA/EVP/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/EVP/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/EVP/git/tags{/sha}', 'git://github.com/UCSC-VLAA/EVP.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-VLAA/EVP/hooks', 'https://github.com/UCSC-VLAA/EVP', '15', '0', 'https://api.github.com/repos/UCSC-VLAA/EVP/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/EVP/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/EVP/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/EVP/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/EVP/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/EVP/languages', 'mit', NULL, 'https://api.github.com/repos/UCSC-VLAA/EVP/merges', 'https://api.github.com/repos/UCSC-VLAA/EVP/milestones{/number}', NULL, 'EVP', 'R_kgDOIcVnkA', 'https://api.github.com/repos/UCSC-VLAA/EVP/notifications{?since,all,participating}', '0', '0', '1', 'UCSC-VLAA', 0.86, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/EVP/pulls{/number}', '2024-04-30 15:49:39+00', '# Unleashing the Power of Visual Prompting At the Pixel Level

This is the official implementation of the paper [Unleashing the Power of Visual Prompting At the Pixel Level](https://arxiv.org/abs/2212.10556).

![](https://github.com/jywu511/Unleashing-the-Power-of-Visual-Prompting-At-the-Pixel-Level/blob/main/methods.png)

## Installation

Clone this repo:

```bash
git clone https://github.com/UCSC-VLAA/EVP
cd EVP
```

Our code is built on:

torch>=1.10.1
torchvision>=0.11.2


Then install dependencies by:

```bash
pip install -r requirments.txt

pip install git+https://github.com/openai/CLIP.git
```

## Data Preparation

See [DATASET.md](https://github.com/UCSC-VLAA/EVP/blob/main/DATASET.md)
for detailed instructions and tips.

## Train/Test for CLIP Model

* Train the Enhanced Visual Prompting on CIFAR100:

```bash
python main.py 
```

* Test the Enhanced Visual Prompting:

```bash
python main.py --evaluate
```

## Train/Test for non-CLIP Model

We propose a simple pre-processing step to match the pre-trained classes and the downstream classes for non-CLIP model. 

* Train the Enhanced Visual Prompting for the non-CLIP Model:

```bash
python main.py --non_CLIP
```

* Test the Enhanced Visual Prompting for the non-CLIP Model:

```bash
python main.py --non_CLIP --evaluate 
```


## Citation

```
@article{wu2024evp,
  title   = {Unleashing the Power of Visual Prompting At the Pixel Level}, 
  author  = {Wu, Junyang and Li, Xianhang and Wei, Chen and Wang, Huiyu and Yuille, Alan and Zhou, Yuyin and Xie, Cihang},
  journal = {TMLR},
  year    = {2024}
}
```


## Contact

Junyang Wu
- email: SJTUwjy@sjtu.edu.cn


Xianhang Li
- email: xli421@ucsc.edu


If you have any question about the code and data, please contact us directly.





', '0', 'https://api.github.com/repos/UCSC-VLAA/EVP/releases{/id}', '1', NULL, '556', 'git@github.com:UCSC-VLAA/EVP.git', '39', 'https://api.github.com/repos/UCSC-VLAA/EVP/stargazers', 'https://api.github.com/repos/UCSC-VLAA/EVP/statuses/{sha}', '1', 'https://api.github.com/repos/UCSC-VLAA/EVP/subscribers', 'https://api.github.com/repos/UCSC-VLAA/EVP/subscription', 'https://github.com/UCSC-VLAA/EVP', 'https://api.github.com/repos/UCSC-VLAA/EVP/tags', 'https://api.github.com/repos/UCSC-VLAA/EVP/teams', 'https://api.github.com/repos/UCSC-VLAA/EVP/git/trees{/sha}', 'ucsc', '2025-02-16 03:08:40+00', 'https://api.github.com/repos/UCSC-VLAA/EVP', 'public', '39', '39', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/lsd-ucsc/ChoRus/{archive_format}{/ref}', '0', 'https://api.github.com/repos/lsd-ucsc/ChoRus/assignees{/user}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/git/blobs{/sha}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/branches{/branch}', 'https://github.com/lsd-ucsc/ChoRus.git', NULL, 'https://api.github.com/repos/lsd-ucsc/ChoRus/collaborators{/collaborator}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/comments{/number}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/commits{/sha}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/compare/{base}...{head}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/contents/{+path}', '## Developing ChoRus

### Prerequisites

You will need the following tools to develop ChoRus:

- [Rust](https://www.rust-lang.org/tools/install)
  - We recommend using [rustup](https://rustup.rs/) to install Rust.
- [mdBook](https://rust-lang.github.io/mdBook/)
  - `cargo install mdbook`

### Repository Structure

This repository is set up as a [Cargo workspace](https://doc.rust-lang.org/book/ch14-03-cargo-workspaces.html). Currently, there are two crates in the workspace:

- `chorus_lib` is a library that contains the core functionality of ChoRus. Users can install this crate as a library and use it in their own projects.
- `chorus_derive` is an internal crate that contains the procedural macros used by `chorus_lib`. It is a dependency of `chorus_lib` and not intended to be used directly by users.

### Writing Examples

The `examples` directory under `chorus_lib` contains several examples of how to use ChoRus. To run an example, use the following command:

```bash
cargo run --example $(EXAMPLE_NAME)
```

It is recommended to write examples for new features.

### Testing

Many of the ChoRus files contain unit tests. Some examples also contain integration tests. You can use `cargo` to run all tests:

```bash
cargo test
```

The documentation also contains tests. Please refer to the [documentation](#documentation) section for more information.

### Documentation

ChoRus uses [mdBook](https://rust-lang.github.io/mdBook/) to generate documentation and all features must be properly documented. Documentation sources are located in the `chorus_book` directory. You can use the following command to preview the documentation:

```bash
mdbook serve chorus_book --open
```

Most of the code snippets in the documentation are tested using `mdbook test`. You can use the following command at the repository root to run tests in the documentation:

```bash
cargo clean
cargo build
mdbook test chorus_book -L ./target/debug/deps
```

Cleaning the project ensures that `mdbook` can find the `chorus_lib` library. More information can be found [on this mdbook issue](https://github.com/rust-lang/mdBook/issues/706).
', '["shumbo","ihaveint","ShapeOfMatter"]', 'https://api.github.com/repos/lsd-ucsc/ChoRus/contributors', '2023-08-02 09:29:02+00', 'main', 'https://api.github.com/repos/lsd-ucsc/ChoRus/deployments', '🎶 Choreographic programming in Rust 🎶', '0', 'https://api.github.com/repos/lsd-ucsc/ChoRus/downloads', 'https://api.github.com/repos/lsd-ucsc/ChoRus/events', '0', '3', '3', 'https://api.github.com/repos/lsd-ucsc/ChoRus/forks', 'lsd-ucsc/ChoRus', 'https://api.github.com/repos/lsd-ucsc/ChoRus/git/commits{/sha}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/git/refs{/sha}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/git/tags{/sha}', 'git://github.com/lsd-ucsc/ChoRus.git', '1', '1', '1', '1', '1', '1', 'https://lsd-ucsc.github.io/ChoRus/', 'https://api.github.com/repos/lsd-ucsc/ChoRus/hooks', 'https://github.com/lsd-ucsc/ChoRus', '16', '0', 'https://api.github.com/repos/lsd-ucsc/ChoRus/issues/comments{/number}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/issues/events{/number}', NULL, 'https://api.github.com/repos/lsd-ucsc/ChoRus/issues{/number}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/keys{/key_id}', 'https://api.github.com/repos/lsd-ucsc/ChoRus/labels{/name}', 'Rust', 'https://api.github.com/repos/lsd-ucsc/ChoRus/languages', 'mit', NULL, 'https://api.github.com/repos/lsd-ucsc/ChoRus/merges', 'https://api.github.com/repos/lsd-ucsc/ChoRus/milestones{/number}', NULL, 'ChoRus', 'R_kgDOKCg8BQ', 'https://api.github.com/repos/lsd-ucsc/ChoRus/notifications{?since,all,participating}', '1', '1', '1', 'lsd-ucsc', 0.9, '0', NULL, 'https://api.github.com/repos/lsd-ucsc/ChoRus/pulls{/number}', '2024-12-02 23:23:07+00', '<p align="center">
  <img src="./assets/ChoRus.png" width="256" height="256">
</p>

<h1 align="center">ChoRus</h1>

<p align="center"><b>Choreographic Programming in Rust</b></p>

<p align="center">
  <a href="https://github.com/lsd-ucsc/ChoRus/actions/workflows/rust.yml" target="_blank" rel="noreferrer">
    <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/lsd-ucsc/ChoRus/rust.yml">
  </a>
  <a href="https://crates.io/crates/chorus_lib" target="_blank" rel="noreferrer">
    <img alt="Crates.io" src="https://img.shields.io/crates/v/chorus_lib">
  </a>
  <a href="https://docs.rs/chorus_lib/latest/chorus_lib/" target="_blank" rel="noreferrer">
    <img alt="docs.rs" src="https://img.shields.io/docsrs/chorus_lib">
  </a>
  <a href="https://github.com/lsd-ucsc/ChoRus/blob/main/LICENSE" target="_blank" rel="noreferrer">
    <img alt="GitHub" src="https://img.shields.io/github/license/lsd-ucsc/ChoRus">
  </a>
</p>

Please see the [ChoRus website](https://lsd-ucsc.github.io/ChoRus/) and [API document](https://docs.rs/chorus_lib) for more information.
', '0', 'https://api.github.com/repos/lsd-ucsc/ChoRus/releases{/id}', '1', NULL, '304', 'git@github.com:lsd-ucsc/ChoRus.git', '49', 'https://api.github.com/repos/lsd-ucsc/ChoRus/stargazers', 'https://api.github.com/repos/lsd-ucsc/ChoRus/statuses/{sha}', '8', 'https://api.github.com/repos/lsd-ucsc/ChoRus/subscribers', 'https://api.github.com/repos/lsd-ucsc/ChoRus/subscription', 'https://github.com/lsd-ucsc/ChoRus', 'https://api.github.com/repos/lsd-ucsc/ChoRus/tags', 'https://api.github.com/repos/lsd-ucsc/ChoRus/teams', 'https://api.github.com/repos/lsd-ucsc/ChoRus/git/trees{/sha}', 'ucsc', '2025-02-28 11:36:19+00', 'https://api.github.com/repos/lsd-ucsc/ChoRus', 'public', '49', '49', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/branches{/branch}', 'https://github.com/UCSC-VLAA/HQ-Edit.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/contents/{+path}', NULL, '["TheFllood","LAOS-Y","cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/contributors', '2024-04-09 01:10:32+00', 'master', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/deployments', '[ICLR 2025] HQ-Edit: A High-Quality and High-Coverage Dataset for General Image Editing', '0', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/downloads', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/events', '0', '3', '3', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/forks', 'UCSC-VLAA/HQ-Edit', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/git/tags{/sha}', 'git://github.com/UCSC-VLAA/HQ-Edit.git', '0', '1', '1', '1', '1', '1', 'https://thefllood.github.io/HQEdit_web/', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/hooks', 'https://github.com/UCSC-VLAA/HQ-Edit', '17', '0', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/languages', 'other', NULL, 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/merges', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/milestones{/number}', NULL, 'HQ-Edit', 'R_kgDOLrrDZA', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/notifications{?since,all,participating}', '4', '4', '1', 'UCSC-VLAA', 0.87, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/pulls{/number}', '2024-04-18 20:58:06+00', '# HQ-Edit: A High-Quality and High-Coverage Dataset for General Image Editing

[Dataset](https://huggingface.co/datasets/UCSC-VLAA/HQ-Edit), [code](), and [model](https://huggingface.co/UCSC-VLAA/HQ-Edit) for [HQ-Edit](https://arxiv.org/abs/2404.09990).

A [working demo](https://huggingface.co/spaces/LAOS-Y/HQEdit) with our fine-tuned checkpoint is available.

Check [project website](https://thefllood.github.io/HQEdit_web/) for data examples and more.

![teaser image](figs/teaser.png)

## Dataset Summary
HQ-Edit is a high-quality and high-coverage instruction-based image editing dataset with around 200,000 edits collected with GPT-4V and DALL-E 3. HQ-Edit’s high-resolution images, rich in detail and accompanied by comprehensive editing prompts, substantially enhance the capabilities of existing image editing models.

## Create Your Own Dataset
Code Refactoring
## Quick Start
Make sure to install the libraries first:

```bash 
pip install accelerate transformers
pip install git+https://github.com/huggingface/diffusers
```

```python 
import torch
from diffusers import StableDiffusionInstructPix2PixPipeline, EulerAncestralDiscreteScheduler
from diffusers.utils import load_image

image_guidance_scale = 1.5
guidance_scale = 7.0
model_id = "MudeHui/HQ-Edit"
pipe = StableDiffusionInstructPix2PixPipeline.from_pretrained(model_id, torch_dtype=torch.float16, safety_checker=None)
pipe.to("cuda")
pipe.scheduler = EulerAncestralDiscreteScheduler.from_config(pipe.scheduler.config)
resolution = 512
image = load_image(
    "https://hf.co/datasets/diffusers/diffusers-images-docs/resolve/main/mountain.png"
).resize((resolution, resolution))

edit_instruction = "Turn sky into a cloudy one"
edited_image = pipe(
    prompt=edit_instruction,
    image=image,
    height=resolution,
    width=resolution,
    guidance_scale=image_guidance_scale,
    image_guidance_scale=image_guidance_scale,
    num_inference_steps=30,
).images[0]
edited_image.save("edited_image.png")
```

## Citation
If you find our HQ-Edit dataset or the fine-tuned checkpoint useful, please consider citing our paper:

```
@article{hui2024hq,
  title   = {HQ-Edit: A High-Quality Dataset for Instruction-based Image Editing},
  author  = {Hui, Mude and Yang, Siwei and Zhao, Bingchen and Shi, Yichun and Wang, Heng and Wang, Peng and Zhou, Yuyin and Xie, Cihang},
  journal = {arXiv preprint arXiv:2404.09990},
  year    = {2024}
}
```

', '0', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/releases{/id}', '1', NULL, '11882', 'git@github.com:UCSC-VLAA/HQ-Edit.git', '90', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/stargazers', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/statuses/{sha}', '6', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/subscribers', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/subscription', 'https://github.com/UCSC-VLAA/HQ-Edit', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/tags', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/teams', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit/git/trees{/sha}', 'ucsc', '2025-03-02 06:20:10+00', 'https://api.github.com/repos/UCSC-VLAA/HQ-Edit', 'public', '90', '90', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/branches{/branch}', 'https://github.com/UCSC-VLAA/vllm-safety-benchmark.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/contents/{+path}', NULL, '["ImKeTT","gzcch","cihangxie","asillycat"]', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/contributors', '2023-11-23 05:05:37+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/deployments', '[ECCV 2024] Official PyTorch Implementation of "How Many Unicorns Are in This Image? A Safety Evaluation Benchmark for Vision LLMs"', '0', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/downloads', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/events', '0', '4', '4', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/forks', 'UCSC-VLAA/vllm-safety-benchmark', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/git/tags{/sha}', 'git://github.com/UCSC-VLAA/vllm-safety-benchmark.git', '0', '1', '1', '0', '1', '0', 'https://arxiv.org/abs/2311.16101', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/hooks', 'https://github.com/UCSC-VLAA/vllm-safety-benchmark', '18', '0', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/merges', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/milestones{/number}', NULL, 'vllm-safety-benchmark', 'R_kgDOKw8nsg', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/notifications{?since,all,participating}', '1', '1', '1', 'UCSC-VLAA', 0.85, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/pulls{/number}', '2023-11-28 02:38:01+00', E'<!-- <p align="center">
  <img src="unicorn.png" width="80">
</p> -->

# How many <img src="assets/unicorn.png" width="36"> Are in This Image? A Safety Evaluation Benchmark for Vision LLMs


[Haoqin Tu*](https://www.haqtu.me/), [Chenhang Cui*](https://gzcch.github.io/), [Zijun Wang*](https://asillycat.github.io/), [Yiyang Zhou](https://yiyangzhou.github.io/), [Bingchen Zhao](https://bzhao.me), [Junlin Han](https://junlinhan.github.io/), [Wangchunshu Zhou](https://michaelzhouwang.github.io/), [Huaxiu Yao](https://www.huaxiuyao.io/), [Cihang Xie](https://cihangxie.github.io/) (*equal contribution)

[![Code License](https://img.shields.io/badge/Code%20License-Apache_2.0-green.svg)](https://github.com/tatsu-lab/stanford_alpaca/blob/main/LICENSE)
[![Data License](https://img.shields.io/badge/Data%20License-CC%20By%20NC%204.0-red.svg)](https://github.com/tatsu-lab/stanford_alpaca/blob/main/DATA_LICENSE)

Our paper is online now: https://arxiv.org/abs/2311.16101

<p align="center">
  <img src="assets/teaser.png" width="1080">
</p>

## Installation
For different VLLMs, please refer to their specific envirnments for installation.

- LLaVA: https://github.com/haotian-liu/LLaVA
- MiniGPT4: https://github.com/Vision-CAIR/MiniGPT-4
- InstructBLIP: https://huggingface.co/Salesforce/instructblip-vicuna-7b
- LLaMA-Adapter: https://github.com/OpenGVLab/LLaMA-Adapter
- mPLUG-Owl1&2: https://github.com/X-PLUG/mPLUG-Owl
- PandaGPT: https://github.com/yxuansu/PandaGPT
- Qwen-VL-Chat: https://huggingface.co/Qwen/Qwen-VL-Chat
- CogVLM: https://github.com/THUDM/CogVLM
- InternLM-Xcomposer: https://huggingface.co/internlm/internlm-xcomposer-7b
- Fuyu: https://huggingface.co/adept/fuyu-8b

## Datasets
We host our datasets [here](https://huggingface.co/datasets/PahaII/vllm_safety_evaluation), containing both OOD and redteaming attack datasets. The full dataset should looks like this:

```
.
├── ./safety_evaluation_benchmark_datasets//                    
    ├── gpt4v_challenging_set # Contains the challenging test data for GPT4V
        ├── attack_images
        ├── sketchy_images
        ├── oodcv_images
        ├── misleading-attack.json
        ├── sketchy-vqa-challenging.json
        └── oodcv-vqa-counterfactual.json
    ├── redteaming # Contains the test data for redteaming tasks
        ├── misleading_attack
            ├── gaussian_noise
            ├── mixattack_eps32
            ├── mixattack_eps64
            ├── sinattack_eps64_dog
            ├── sinattack_eps64_coconut
            ├── sinattack_eps64_spaceship
            └── annotation.json
        ├── jailbreak_vit # adversarial images for jailbreaking VLLM through ViT
        └── jailbreak_llm # adversarial suffixes for jailbreaking VLLM through LLM
    └── ood # Contains the test data for OOD scenarios
        ├── sketchy-vqa
            ├── sketchy-vqa.json
            ├── sketchy-challenging.json
        └── oodcv-vqa
            ├── oodcv-vqa.json
            └── oodcv-counterfactual.json
```

### Out-of-Distribution Scenario
For $\\texttt{OODCV-VQA}$ and its counterfactual version, please download images from [OODCV](https://drive.google.com/file/d/1jq43Q0cenISIq7acW0LS-Lqghgy8exsj/view?usp=share_link), and put all images in `ood/oodcv-vqa`.

For $\\texttt{Sketchy-VQA}$ and its challenging version, please first download images from [here](https://cybertron.cg.tu-berlin.de/eitz/projects/classifysketch/sketches_png.zip), put the zip file into `ood/sketchy-vqa/skechydata/`, then unzip it.

### Redteaming Attack
For the proposed misleading attack, the full datasets and all trained adversarial examples are in `redteaming/misleading_attack`, including images with gaussian noise, Sin.Attack and MixAttack with two pertubation budgets $\\epsilon=32/255$ (eps32) or $\\epsilon=64/255$ (eps64).

For jailbreaking methods, please refer to their respective repositories for more dataset details: [Jailbreak through ViT](https://github.com/Unispac/Visual-Adversarial-Examples-Jailbreak-Large-Language-Models), [Jailbreak through LLM](https://github.com/llm-attacks/llm-attacks).

## Testing
Before you start, make sure you have modified the `CACHE_DIR` (where you store all your model weights) and `DATA_DIR` (where you store the benchmark data) in `baselines/config.json` according to your local envirnment.

```bash
cd baselines
python ../model_testing_zoo.py --model_name LLaVA
```
Choose `--model_name` from ["LlamaAdapterV2", "MiniGPT4", "MiniGPT4v2", "LLaVA", "mPLUGOwl", "mPLUGOwl2", "PandaGPT", "InstructBLIP2", "Flamingo", "LLaVAv1.5", "LLaVAv1.5-13B", "LLaVA_llama2-13B", "MiniGPT4_llama2", "Qwen-VL-Chat", "MiniGPT4_13B", "InstructBLIP2-FlanT5-xl", "InstructBLIP2-FlanT5-xxl",  "InstructBLIP2-13B", "CogVLM", "Fuyu", "InternLM"].

### $\\texttt{OODCV-VQA}$ and its Counterfactual Variant

For $\\texttt{OODCV-VQA}$:
```bash
cd baselines
python ../safety_evaluations/ood_scenarios/evaluation.py --model_name LLaVA --eval_oodcv
```

For the counterfactual version:

```bash
cd baselines
python ../safety_evaluations/ood_scenarios/evaluation.py --model_name LLaVA --eval_oodcv_cf
```

### $\\texttt{Sketchy-VQA}$ and its Challenging Variant

For $\\texttt{Sketchy-VQA}$:
```bash
cd baselines
python ../safety_evaluations/ood_scenarios/evaluation.py --model_name LLaVA --eval_sketch
```

For the challenging version:

```bash
cd baselines
python ../safety_evaluations/ood_scenarios/evaluation.py --model_name LLaVA --eval_sketch_challenging
```

### Misleading Attack
For training the misleading adversarial images:

```bash
cd safety_evaluations/redteaming/misleading_vision_attack

python misleading_vis_attack.py --lr 1e-3 --misleading_obj dog --input_folder path/to/attack-bard/NIPS2017 --output_folder ./misleading_adversarial_attack
```
Change `--input_folder` to the path of adversarial examples you want to test. If you want to use the MixAttack, add `--mix_obj` argument to the command.

For testing the VLLMs:

```bash
cd baselines

python ../safety_evaluations/redteaming/misleading_vision_attack/test_misleading.py --image_folder redteaming/misleading_attack/mixattack_eps64 --output_name misleading_attack_eps64 --human_annot_path redteaming/misleading_attack/annotation.json
```

### Jailbreaking Methods

Please refer to these two repositories for detailed attack settings: [Jailbreak through ViT](https://github.com/Unispac/Visual-Adversarial-Examples-Jailbreak-Large-Language-Models), [Jailbreak through LLM](https://github.com/llm-attacks/llm-attacks). We give our trained adversarial images and suffixes for jailbreaking ViTs and LLMs in `redteaming/jailbreak_vit` and `redteaming/jailbreak_llm` in the data folder.

## Usage and License Notices
The data, code and checkpoint is intended and licensed for research use only. The dataset is CC BY NC 4.0 (allowing only non-commercial use) and models trained using the dataset should not be used outside of research purposes.

## Citation
If you find our work useful to your research and applications, please consider citing the paper and staring the repo :)

```bibtex
@article{tu2023how,
  title={How Many Unicorns Are In This Image? A Safety Evaluation Benchmark For Vision LLMs},
  author={Tu, Haoqin and Cui, Chenhang and Wang, Zijun and Zhou, Yiyang and Zhao, Bingchen and Han, Junlin and Zhou, Wangchunshu and Yao, Huaxiu and Xie, Cihang},
  journal={arXiv preprint arXiv:2311.16101},
  year={2023}
}
```

## Acknowledgement
This work is partially supported by a gift from Open Philanthropy. We thank Center for AI Safety and Google Cloud for supporting our computing needs. Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the sponsors.
', '0', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/releases{/id}', '1', NULL, '3326', 'git@github.com:UCSC-VLAA/vllm-safety-benchmark.git', '77', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/stargazers', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/subscribers', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/subscription', 'https://github.com/UCSC-VLAA/vllm-safety-benchmark', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/tags', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/teams', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark/git/trees{/sha}', 'ucsc', '2025-03-04 06:29:32+00', 'https://api.github.com/repos/UCSC-VLAA/vllm-safety-benchmark', 'public', '77', '77', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/masc-ucsc/hhds/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/hhds/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/hhds/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/hhds/branches{/branch}', 'https://github.com/masc-ucsc/hhds.git', NULL, 'https://api.github.com/repos/masc-ucsc/hhds/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/hhds/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hhds/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hhds/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/hhds/contents/{+path}', NULL, '["renau","ujjwal-shekhar","renovatebot","mjao1"]', 'https://api.github.com/repos/masc-ucsc/hhds/contributors', '2023-04-04 23:30:12+00', 'main', 'https://api.github.com/repos/masc-ucsc/hhds/deployments', 'Hardware Hierarchical Dynamic Structures', '0', 'https://api.github.com/repos/masc-ucsc/hhds/downloads', 'https://api.github.com/repos/masc-ucsc/hhds/events', '0', '5', '5', 'https://api.github.com/repos/masc-ucsc/hhds/forks', 'masc-ucsc/hhds', 'https://api.github.com/repos/masc-ucsc/hhds/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hhds/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/hhds/git/tags{/sha}', 'git://github.com/masc-ucsc/hhds.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/hhds/hooks', 'https://github.com/masc-ucsc/hhds', '19', '0', 'https://api.github.com/repos/masc-ucsc/hhds/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hhds/issues/events{/number}', NULL, 'https://api.github.com/repos/masc-ucsc/hhds/issues{/number}', 'https://api.github.com/repos/masc-ucsc/hhds/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/hhds/labels{/name}', 'C++', 'https://api.github.com/repos/masc-ucsc/hhds/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/masc-ucsc/hhds/merges', 'https://api.github.com/repos/masc-ucsc/hhds/milestones{/number}', NULL, 'hhds', 'R_kgDOJS0TOg', 'https://api.github.com/repos/masc-ucsc/hhds/notifications{?since,all,participating}', '6', '6', '1', 'masc-ucsc', 0.87, '0', NULL, 'https://api.github.com/repos/masc-ucsc/hhds/pulls{/number}', '2025-03-03 12:03:35+00', '
# HHDS: Hardware Hierarchical Dynamic Structure


This repository contains a highly optimized graph and tree data structure. The
structure is optimized for handling graphs/trees structures typically found in
hardware tools. 


## Graph

Some of the key characteristics:

-Graph mutates (add/remove edges and nodes)

-At most 32 bit ID for node (graph would be partitioned if larger is needed)

-Once an ID is created, even if node is deleted, it can not be reused. This
sometimes called a "tombstone deletion"

-Delete node is frequent (code optimization)

-2 main types of traversal (any order or topological sort)

-Add edges is not so frequent after the 1st phase of graph creation

-Nodes has several "pins" and the edges are bi-directional

-In practice (topological sort), most edges are "short" no need to keep large
32 bit integer. Delta optimization to fit more edges.

-Meta information (attributes) are kept separate with the exception of type

-Most nodes have under 8 edges, but some (reset/clk) have LOTS of edges

-The graph operations do NOT need to be multithreaded with updates. The
parallelism is extracted from parallel thread operations. (parallel read-only
may happen).

### Related works

Some related (but different) graph representations:

Pandey, Prashant, et al. "Terrace: A hierarchical graph container for skewed
dynamic graphs." Proceedings of the 2021 International Conference on
Management of Data. 2021.

Winter, Martin, et al. "faimGraph: high performance management of
fully-dynamic graphs under tight memory constraints on the GPU." SC18:
International Conference for High Performance Computing, Networking, Storage
and Analysis. IEEE, 2018.

Bader, David A., et al. "Stinger: Spatio-temporal interaction networks and
graphs (sting) extensible representation." Georgia Institute of Technology,
Tech. Rep (2009).

Feng, Guanyu, et al. "Risgraph: A real-time streaming system for evolving
graphs to support sub-millisecond per-update analysis at millions ops/s."
Proceedings of the 2021 International Conference on Management of Data. 2021.

### Overall data structure:

Vector with 4 types of nodes: Free, Node, Pin, Overflow

Node/Pin are 16 byte, Overflow 32 byte

Node is the master node and also the output pin

Pin is either of the other node pins (input 0, output 1....)

Node/Pin have a very small amount of edges. If more are needed, the overflow
is used. If more are needed an index to emhash8::HashSet is used (overflow is
deleted and moved to the set)

The overflow are just a continuous (not sorted) array. Scanning is needed if
overflow is used.


## Tree

The tree data structure is optimized for typical AST traversal and operations.
Once a tree is created, the common operation is to delete nodes, and at most
insert phi nodes (SSA). This means that the insertion is for a few entries, not
large subtrees.

### Key Features

- Efficient sibling traversal with next/previous pointers
- Optimized for append operations rather than random insertions
- Support for subtree references and sharing between trees via Forest container
- Three traversal modes: pre-order, post-order, and sibling-order
- Memory-efficient storage using chunks of 8 nodes
- Delta-compressed child pointers for common cases
- Tombstone deletion (IDs are not reused)
- Leaf-focused operations (delete_leaf is optimized)

### Data Structure Design

The tree uses a chunked storage approach where nodes are stored in fixed-size chunks of 8 entries. Each chunk contains:

- Long pointers (49-bit) for first/last child when needed
- Delta-compressed short pointers (18-bit) for child references within nearby chunks
- Next/Previous sibling pointers for efficient sibling traversal
- Parent pointers for upward traversal
- Leaf flag for quick leaf checks
- Support for subtree references

The structure is particularly optimized for:
1. Append operations (adding siblings or children at the end)
2. Leaf deletion
3. Sibling traversal
4. Child traversal for small families (< 8 children)

### Traversal Support

The tree provides three iterator types:
```cpp
// Pre-order traversal (parent then children)
for(auto node : tree.pre_order(start_pos)) { ... }

// Post-order traversal (children then parent) 
for(auto node : tree.post_order(start_pos)) { ... }

// Sibling-order traversal (iterate through siblings)
for(auto node : tree.sibling_order(start_pos)) { ... }
```

Each traversal mode also supports following subtree references via an optional flag:
```cpp
// Follow subtree references during traversal
for(auto node : tree.pre_order(start_pos, true)) { ... }
```

### Forest Support

Trees can share subtrees via the Forest container:
```cpp
Forest<int> forest;
Tree_pos subtree = forest.create_tree(root_data);
tree.add_subtree_ref(node_pos, subtree);
```

The Forest manages reference counting and cleanup of shared subtrees.

### Related

Not same, but similar idea and different representation:

Meyerovich, Leo A., Todd Mytkowicz, and Wolfram Schulte. "Data parallel programming for irregular tree computations." (2011).

Vollmer, Michael, Sarah Spall, Buddhika Chamith, Laith Sakka, Chaitanya Koparkar, Milind Kulkarni, Sam Tobin-Hochstadt, and Ryan R. Newton. "Compiling tree transforms to operate on packed representations." (2017): 26.
', '0', 'https://api.github.com/repos/masc-ucsc/hhds/releases{/id}', '1', NULL, '1397', 'git@github.com:masc-ucsc/hhds.git', '5', 'https://api.github.com/repos/masc-ucsc/hhds/stargazers', 'https://api.github.com/repos/masc-ucsc/hhds/statuses/{sha}', '17', 'https://api.github.com/repos/masc-ucsc/hhds/subscribers', 'https://api.github.com/repos/masc-ucsc/hhds/subscription', 'https://github.com/masc-ucsc/hhds', 'https://api.github.com/repos/masc-ucsc/hhds/tags', 'https://api.github.com/repos/masc-ucsc/hhds/teams', 'https://api.github.com/repos/masc-ucsc/hhds/git/trees{/sha}', 'ucsc', '2025-02-18 12:37:31+00', 'https://api.github.com/repos/masc-ucsc/hhds', 'public', '5', '5', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/masc-ucsc/desesc/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/desesc/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/desesc/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/desesc/branches{/branch}', 'https://github.com/masc-ucsc/desesc.git', NULL, 'https://api.github.com/repos/masc-ucsc/desesc/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/desesc/comments{/number}', 'https://api.github.com/repos/masc-ucsc/desesc/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/desesc/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/desesc/contents/{+path}', NULL, '["renau","renovatebot","bhawandeepsingh","markzakharov","rabieifk"]', 'https://api.github.com/repos/masc-ucsc/desesc/contributors', '2022-10-30 17:24:57+00', 'main', 'https://api.github.com/repos/masc-ucsc/desesc/deployments', 'Dromajo ESESC', '0', 'https://api.github.com/repos/masc-ucsc/desesc/downloads', 'https://api.github.com/repos/masc-ucsc/desesc/events', '0', '5', '5', 'https://api.github.com/repos/masc-ucsc/desesc/forks', 'masc-ucsc/desesc', 'https://api.github.com/repos/masc-ucsc/desesc/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/desesc/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/desesc/git/tags{/sha}', 'git://github.com/masc-ucsc/desesc.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/desesc/hooks', 'https://github.com/masc-ucsc/desesc', '20', '0', 'https://api.github.com/repos/masc-ucsc/desesc/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/desesc/issues/events{/number}', NULL, 'https://api.github.com/repos/masc-ucsc/desesc/issues{/number}', 'https://api.github.com/repos/masc-ucsc/desesc/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/desesc/labels{/name}', 'C++', 'https://api.github.com/repos/masc-ucsc/desesc/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/masc-ucsc/desesc/merges', 'https://api.github.com/repos/masc-ucsc/desesc/milestones{/number}', NULL, 'desesc', 'R_kgDOIVsoUA', 'https://api.github.com/repos/masc-ucsc/desesc/notifications{?since,all,participating}', '11', '11', '1', 'masc-ucsc', 0.93, '0', NULL, 'https://api.github.com/repos/masc-ucsc/desesc/pulls{/number}', '2025-02-26 21:30:43+00', E'# desesc

Dromajo ESESC

DESESC is an evolution from SESC, but it does not use semantic versioning. The
reason is that after each major change (new letter) there is a period of "beta"
unstable which is akind of 0.x version in semantic versioning.

Each major release adds a letter:

[SESC](https://sesc.sourceforge.net) 

 MIPS based OoO core with multicore and TLS support

[ESESC](https://masc.soe.ucsc.edu/esesc/)

Major changes from SESC:

  * QEMU based emulator (MIPS/RISC-V/ARM)
  * Power/thermal
  * Statistical sampling

DESESC:

Major changes from ESESC:

  * Dromajo instead of QEMU
  * Specter Safe OoO model
  * Major rework for modern C++
  * New configuration

## Setup

DESESC requires gcc (or clang) versions 10 or newer and bazelisk.

### Install bazelisk

**Install Bazel**isk

Bazelisk is a wrapper around bazel that allows you to use a specific version.

If you do not have system permissions, you can install a local bazelisk

```sh
npm install  @bazel/bazelisk
alias bazel=$(pwd)/node_modules/\\@bazel/bazelisk/bazelisk.js
```

You can also install it directly if you have administrative permissions:

macos:
```sh
brew install bazelisk.
```

Linux:
```sh
go install github.com/bazelbuild/bazelisk@latest
export PATH=$PATH:$(go env GOPATH)/bin
```

Arch linux:
```sh
pacaur -S bazelisk  # or yay or paru installers
```

### Dhrystone example

To build `desesc` with debug version (debug/develop)
```
bazel build -c dbg //main:desesc
```

To build `desesc` with release version (long simulations)
```
bazel build -c dbg //main:desesc
```

To run the default simulation (dhrystone):
```
./bazel-bin/main/desesc -c ./conf/desesc.toml
```

### Konata

You may want to use https://github.com/shioyadan/Konata to see the traces generated


', '0', 'https://api.github.com/repos/masc-ucsc/desesc/releases{/id}', '1', NULL, '3948', 'git@github.com:masc-ucsc/desesc.git', '3', 'https://api.github.com/repos/masc-ucsc/desesc/stargazers', 'https://api.github.com/repos/masc-ucsc/desesc/statuses/{sha}', '18', 'https://api.github.com/repos/masc-ucsc/desesc/subscribers', 'https://api.github.com/repos/masc-ucsc/desesc/subscription', 'https://github.com/masc-ucsc/desesc', 'https://api.github.com/repos/masc-ucsc/desesc/tags', 'https://api.github.com/repos/masc-ucsc/desesc/teams', 'https://api.github.com/repos/masc-ucsc/desesc/git/trees{/sha}', 'ucsc', '2025-02-25 03:05:17+00', 'https://api.github.com/repos/masc-ucsc/desesc', 'public', '3', '3', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/masc-ucsc/hif/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/hif/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/hif/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/hif/branches{/branch}', 'https://github.com/masc-ucsc/hif.git', NULL, 'https://api.github.com/repos/masc-ucsc/hif/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/hif/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hif/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hif/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/hif/contents/{+path}', NULL, '["renau","jsg831","renovatebot","mjao1"]', 'https://api.github.com/repos/masc-ucsc/hif/contributors', '2021-11-06 17:18:03+00', 'main', 'https://api.github.com/repos/masc-ucsc/hif/deployments', 'Hardware Interchange Format', '0', 'https://api.github.com/repos/masc-ucsc/hif/downloads', 'https://api.github.com/repos/masc-ucsc/hif/events', '0', '2', '2', 'https://api.github.com/repos/masc-ucsc/hif/forks', 'masc-ucsc/hif', 'https://api.github.com/repos/masc-ucsc/hif/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hif/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/hif/git/tags{/sha}', 'git://github.com/masc-ucsc/hif.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/hif/hooks', 'https://github.com/masc-ucsc/hif', '21', '0', 'https://api.github.com/repos/masc-ucsc/hif/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hif/issues/events{/number}', NULL, 'https://api.github.com/repos/masc-ucsc/hif/issues{/number}', 'https://api.github.com/repos/masc-ucsc/hif/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/hif/labels{/name}', 'C++', 'https://api.github.com/repos/masc-ucsc/hif/languages', 'other', NULL, 'https://api.github.com/repos/masc-ucsc/hif/merges', 'https://api.github.com/repos/masc-ucsc/hif/milestones{/number}', NULL, 'hif', 'R_kgDOGVmeaw', 'https://api.github.com/repos/masc-ucsc/hif/notifications{?since,all,participating}', '3', '3', '1', 'masc-ucsc', 0.85, '0', NULL, 'https://api.github.com/repos/masc-ucsc/hif/pulls{/number}', '2025-02-07 20:52:06+00', E'# HIF: Hardware Interchange Format

## Goals

HIF is intended to be a file format to interchange circuits/netlists/designs
across different hardware design tools/compilers. It consists of a "data
format" and an "encoding" to efficiently store the data format.


The main goals:

* Generic to support multiple tools that may have different Hardware Internal
  Representation (HIF)
* Reasonably fast to load/save files
* Reasonably compact representation
* API to read/write HIF files to avoid custom parser/iterator for each tool
* Version and tool dependence information
* Use the same format to support control flow (tree) and graph (netlist)
  representation

Non goals:

* Translate IRs across tools. The goal is to be able to load/save, not to
  translate across IRs. E.g: a FIRRTL ''add'' has different semantics than a
  Verilog ''add''. Also, different IRs may have different bitwidth inference
  rules.

## Related Background

There are several hardware design compiler/tools, but this document explanation
uses 6 common tools to showcase different semantics and how to interact with
HIF:

* CIRCT MLIR (https://github.com/llvm/circt), or just MILR.
* CHISEL CHIRRTL/FIRRRTL (https://github.com/chipsalliance/firrtl,
  https://circt.llvm.org/docs/RationaleFIRRTL/), or just FIRRTL.
* LiveHD LNAST (https://masc-ucsc.github.io/docs), or just LNAST.
* LiveHD Lgraph (https://masc-ucsc.github.io), or just Lgraph.
* Verilog Slang AST (https://github.com/MikePopoloski/slang), or just slang.
* Verilog RTL netlist, or just RTL.


There are several ways to classify the different hardware Intermediate
Representations (IR):

* Netlist or Tree. A netlist is a graph-like structure with `nodes` and
  `edges`. A `node` can have several `pins` where `edges` connect. An `edge`
  connects a pair of `pins`. A tree structure is the most typical Abstract
  Syntax Tree (AST) where tree statements, also called nodes in HIF, have an
  order and structure.

* Scoping allows to restrict the visibility of variable definitions in a
  tree-like structure. There are many possible ways to manage scopes but the
  most common is when "previous writes to upper scopes are visible in lower
  scopes, and writes to lower scopes are not visible to upper scopes unless a
  previous write exists". Managing scopes without SSA is more difficult because
  it requires a stack, as a result there are 2 scopes supported in HIF.  Simple
  scopes that are typical scopes with SSA and custom scopes that it is anything
  else with scopes.


MLIR is an tree-like SSA representation with scopes. FIRRTL, slang, and LNAST
are also tree-like representations but there is no SSA. The three can have
custom scopes or not. In FIRRTL and LNAST there are lowering passes that either
remove scopes or transform to simple scopes with SSA as handled by HIF. Lgraph
and RTL are graph-like representations when traversed in topological order,
they can comply with the SSA definition of single write and writes before
reads. Netlist representations do not have scopes beyond block/module
definition.


The goal of HIF is to have a common data format and binary encoding to
represent all those representations. As such, other hardware IRs should also be
able to map.


When the HIF uses SSA and only simple scopes tools should be able to read other
tools data representation. The nodes or statements may be "unknown",
effectively being a "blackbox", but the tool should be able to map to its
internal data structure as "blackboxes". Since nearly all the hardware IRs
support blackboxes, this should not be a problem. Obviously if most of the
nodes are unknown, the hardware tool should not be able to apply
transformations or changes on those blackbox nodes, but a tool with HIF read
and write should preserve semantics.


## Data Format


HIF is a sequence of statements that show connectivity and nesting across the
statements.


HIF goal is to be extensible per tool but with a common syntax. There are only
statements in HIF, each statement has a `class`. Each statement class has some
customizable fields per tool but overall a statement can have a `type`,
`instance`, `ios`, and `attributes`.


The `instance` is just an alphanumeric identifier.

The `ios` is an ordered list of identifiers with an modifier to indicate if the
io is an `input` or an `output`.

The `attributes` is a sequence of assignments that assign an string (lhs) to
another (rhs). The rhs is the attribute name, the lhs is the attribute value.


The statement `class` is just an enumerate with these possible values:

* `node` class is used to represent nodes in a graph or AST. Each node has a
  `type`, `instance`, `ios`, and `attributes`. The `type` is tool dependent and
  specified the node type. the outputs must be SSA. This means that same output
  can only be written once.

  + A `node` statement example could be A FIRRTL firrtl.add addition node with an
    output connecting to net `foo`, and two input connected to `bar1` and
    `bar2`. The node can have custom per tool like `loc` or `xxx`.
  ```
  node add instance_string
     (output foo, input bar1, input bar2)
    @(loc=3,xxx=some_string_field_attr)
  ```

* `assign` class connects inputs to outputs. The number of inputs and outputs
  should match. Unlike most statements, the output does not need to be SSA.
  This means that the same variable can be written many times by different
  assignments. If there are any attribute, the attribute is applied to each
  output. 

  + An `assign` statement example could be used to express a statement like `out
    = out + 1`
  ```
  node add
     (output tmp_ssa, input out, input 1)
  assign
     (output out, input tmp_ssa)
  ```

* `attr` class is used to assign attributes to an identifier. It could be seen
  like an assign but it has no `ios`. The `attributes` are assigned to the
  `identifier`.

  + An `attr` statment assigns attributes:
  ```
  attr attr_id
     @(loc=100, foo=bar)
  ```

	+The first statement on the HIF file must be an `attr` with the `tool` name
   and the `version`. Optional but standard fields are `author`, `license`,
   `date`.

* `open_call` class marks the begin of a scope that can access the upper
  scope. The tool can use `type` to indicate further functionality. Scopes can
  also have `ios` and `attributes`. If variables first time used inside the
  scope must ''live'' after the scope is closed, they may be added to the `ios`
  output list. The scope outputs do not need to be SSA.

  + A `open_call` statment could be the the taken path of an if-statement. `if
    a==0 { b = c + 1 }` could be encoded as:

  ```
  node ==
    (output tmp, input a, input 0)
  open_call if_taken
    (input tmp)
  node +
    (output tmp2, input c, input 1)
  assign
    (output b, input tmp2)
  end
  ```

* `closed_call` class is similar to `open_call` but marks the
  beging of a scope without access to upper scope. As such, all the inputs and
  outputs must be explicitly marked. The tool can use the `type` field to
  indicate scope. 


* `open_def` class is similar to the `open_call` but the key
  difference is that it is not called. A typical use is to to declare a lambda
  or function that could capture current scope variables as inputs. To call the
  created function a `node` statement can be used.

  +A `open_def` example could be a CIRCT ''firrtl.module'' that access
  upper scope ''firrtl.circuit'' definitions.
  ```
  open_def firrtl.module foo_mod
    (input xx, output yy)
  ```

* `closed_def` class is like the `open_def` but without
  upper scope access.

  +A `closed_def` example is a module or function declaration like a verilog `module foo(input a, output c, input x)`:
  ```
  closed_call module_begin foo
    (input a, output c, input x)
  ```

* `end` class marks the end of a previously started scope, closure, or
  function.

* `use` class allows to set attributes to the reminding statements in the
  current and lower open scopes. This is used to avoid repeating the same
  attribute for each statement. 

  +A `use` class example is to indicate the file name that applies to the following statments:
  ```
  use
    @(file_name=foo.v)
  ```


The attributes and ios use a tuple syntax. A tuple is an ordered sequence of
elements that can be named. The EBNF syntax, not binary encoding, for HIF data
format grammar:

```
start ::= tool_version statement*

tool_version ::= ''attr'' ''@('' tool=ID '','' version=XX '')

statement ::= class (ID ID?)? ios? attributes?

ios ::= ''('' io_tuple? '')''

attributes ::= ''@('' attr_tuple? '')''

class ::= ''node'' | ''assign'' | ''attr''
        | ''open_call'' | ''closed_call''
        | ''open_def'' | ''closed_def''
        | ''end'' | ''use''

attr_tuple ::= attr_entry ( '','' attr_entry )*
attr_entry ::= ID ''='' ID

io_tuple ::= io_entry ( '','' io_entry )*
io_entry ::= (''input''|''output'') ((ID ''='' ID) | ID)
```


Where ID is any sequence of characters to specify a netlist name, constant, or
identifier. In languages like Verilog an identifier can have any character, and
others use `.` to separate struct fields. In HIF an ID can be any sequence of
bytes where the end is know because the encoding includes the ID size.


The first statement should be a `attr` with at least the `tool` and `version`
attribute fields. This is needed to distinguish semantics.

### Data Format FAQ

#### How do you support partial updates?

Typically partial updates change some bits in a wire/net. It is up to the tool
on how to represent in HIF but a logical functionality is to have a `node` with 
a custom `type` like "setbits" and inputs `din`, `val` and `mask`. The result
replaces from `din` the `mask` bits with the bits in `val`.

If the output is not SSA, the setbits should be followed by an assign.


```
node setbits
  (output tmp, input din=som_net, input val=0xF, input mask=0xF0)
assign
  (output some_net, input tmp)
```

#### How do you know the order of arguments?

Tuples are ordered. The declaration order is the order of the input/outputs.


#### How do you encode the tool and version?

The `tool` name should be a full URL should be used with
the potential dialect targeted. The version is any string
that the tool will use, but a semantic versioning is a logical string.

```
tool=https://github.com/llvm/circt/FIRRTL,version=0.1.2
tool=https://github.com/masc-ucsc/livehd/Lgraph,version=some.3.xxx
tool=https://github.com/masc-ucsc/livehd/LNAST,version=alpha
```

#### How do you handle bidirectional or `inout`?

Verilog has `inout`, CIRCT has `analog`. The way to handle it is to
have an `input` and an `output` with the same name.

#### How do you handle flip in FIRRTL?

The FIRRTL bundle can be expanded to the `ios` and the flipped field
can have the opposite direction:

```
closed_def
  (input io.input.bar, input io.input.foo, output io.input.flipped)
```

#### How do you handle multiple drivers tri-state logic?

The recommendation here is to create a solution similar to the partial update.
If the language supports multiple simultaneous drivers on a single net, a
solution is to have a node with "bus" type. The bus type can have many inputs
and a single output. The `bus` can have or not valid bits, this is up to the
tool semantics.


#### Small Verilog example?

It is very tool dependent, but this simple Verilog:

```
   1
   2   module inner(input z, output signed [1:0] a, input y, output h);
   3     assign a = y + z;
   4     assign h = !(y&z);
   5   endmodule
   6   
   7   module submodule (input a, input b, output signed [0:0] c, output d);
   8     inner foo(.y(a),.z(b),.a(c),.h(d));
   9   endmodule
  10   // some comment, and another
```

could be encoded as:

```
attr 
  @(tool=some_harcoded_url,version=alpha)
use 
  @(file=submodule.v)

closed_def module inner 
   (input z, output a, input y, output h)
  @(loc=2)
  attr
     (input a, output a)
    @(bits_begin=1, bits_end=0, sign=true)
  node add
     (output a, input y, input z)
    @(loc=3)
  node and
     (output tmp, input y, input z)
    @(loc=4)
  node not
     (output h, input tmp)
    @(loc=4)
end 
  @(loc=5)

closed_def module submodule
   (input a, input b, output c, output d)
  @(loc=7)
  attr
     (input c, output c)
    @(signed=true)
  node call submodule
     (y=a,z=b,a=c,h=d)
    @(instance=foo, loc=8)
end 
  @(loc=9)

node comment
  @(txt=some comment\\, and another,loc=10)
```


## Encoding

The data format sections explains the information to store. The encoding section
explains how to have an efficient binary encoding.


There are two set files `num.id` and `num.st`. The `num` is a decimal value.
For each number the id file contains all the `ID` declarations used by the stmt
file. Both files have less than 1M (2^20) entries (IDs for id file, or
statements or stmt file).


### `ID` encoding

The `ID` can have any string and numerical constant. Different tools have
different classes of constants. Verilog supports 0,1,x,z in the encoding.
FIRRTL only has 0,1 and a concept of unknown for the whole number (not per
bit). VHDL has even more states per bit.


An inefficient implementation will use strings to represent each constant, net
name, or string with some in-band encoding to distinguish between them. The
problem is that this will be inefficient and tool dependent to distinguish
between ''ff'' as 255 or ''ff'' string or ''ff'' as net or edge connecting
input/outputs.

The id file has a list of all the identifiers by the statement file with the
same number. Each `ID` entry consists of 3 fields: declare type, declare size,
and payload.

* `declare type`: is a 4 bit field (`sttt`).  `ttt` is the type of `ID` and the
  `s` bits to select between 1 or 3 bytes for the string size (8 or 24 bits
   declare size total). The `declare` constant type (`sttt`) can be:

    + string (`ttt=000`): A string sequence that allows any character.

    + base2 (`ttt=001`): A little endian number of (0,1) values in two''s
      complement.

    + base3 (`ttt=010`): A sequence of 2 base2 numbers. The first encodes the 0/1
      sequence.  The 2nd encodes the Verilog `x`. E.g: the ''b0?10 is encoded as
      "0010" and "0100". If the 2nd number is zero, it means that it can be encoded
      as base2 without loss of information.

    + base4 (`ttt=011`): 3 sequences of base2 numbers. The first is 01, the 2nd is
      0?, the third is 0z.

    + custom (`ttt=100`): A per tool sequence of bits to represent a constant.

    + `ttt` from 5 to 7 are reserved.

* `declare size` is a 12 or 20 bits to indicate the size of the entry.

The `declare` statement binary encoding looks like `sttt_xxxx` when
small bit is set (`s=1`) and `sttt_xxxx_yyyy_yyyy_zzzz_zzzz` when
`s=0`. In both cases `s` bit is the bit 0.


There can be up to 1M IDs. Without any optimization, each ID reference would
need 20bits. In hardware, some names are more frequently used that others.
E.g: in BOOM FIRRTL the top 32 names represent over 1/3 of all the
names. To leverage this, there are two reference long and short reference.

* long reference: `xxxxxxxx_xxxxxxxx_xxxxxee0` (ee is bit 1 and 2) is an ID that points the ID file
  with 20bits. `ee` encodes the type of ID:
  + `ee=00` is a port id for an input or attribute
  + `ee=01` is a port id for an output
  + `ee=10` is a value to assign to port or net connected

* short reference: `xxxxxee1` is a software managed cache for the most frequent IDs

* no reference: `11111111` (255) is used to indicate no valid ID which can be used to
  indicate end of sequence or no instance ID.


### statement encoding


The statement follows a regular structure:


The first 4 bits selects the statement class (`cccc`):

* `node` (`0` or `0000`)
* `assign` (`1` or `0001`)
* `attr` (`2` or `0011`)
* `open_call` (`3` or `0100`)
* `closed_call` (`4` or `0101`)
* `open_def` (`5` or `0110`)
* `closed_def` (`6` or `0111`)
* `end` (`7` or `1000`)
* `use` (`8` or `1001`)
* `9` to `15` are reserved


The next 12 bits indicate the `type` for all the statement class.

For the other statements, the 12 bit `type` select a type from the type buffer.
If the type is all ones (`0xFFF`) no type is used.


After the type, there is an optional `ID` that it is class/type dependent. A 8
bit `255` indicates no ID used.

After starts the sequence of input/outputs. This is a sequence if `ID` followed
by an ID of 255 which indicates end of sequence. The `io_entry` has two
possible options a `ID=ID` or just `ID`. The later is encoded as inline
constant zero (`0x00`) followed by the ID. The reason is that the lhs can not
be a numeric constant of `0` as allowed by the `xxxxxxx00` encoding, but a
string or a net name. The following sequence of attributes follows the same
semantics.


#### Example


The entry sequence:

```
use
  @(tool=some_harcoded_url,version=alpha)
```

The binary encoded for `0.id` and `0.st` is the following:

The contents for `0.id`:
```
1000           # sttt: small size and string declare
0010           # 4 characters in tool
''t''
''o''
''o''
''l''

0000           # sttt: small size and string declare
0000_0000_0000_0001_0001  # 17 characters in "some_harcoded_url"
''s''
''o''
''m''
...            # the rest of the string
''r''
''l''

1000           # sttt: small size and string declare
0111           # 7 characters in "version"
''v''
...
''n''

1000           # sttt: small size and string declare
0101           # 5 characters in "alpha"
''a''
...
''a''
```

The contents for `0.st`:
```
1001           # cccc: use statement
1111_11111111  # no type
11111111       # no IOs (end of IDs value)
00000_00_0     # input with ptr 3 to constant buffer (tool)
00001_10_0     # input with ptr 2 to constant buffer (some_harcoded_url)
00010_00_0     # input with ptr 1 to constant buffer (version)
00011_10_0     # input with ptr 0 to constant buffer (alpha)
11111111       # no more attributes
```

In the previous example, there are 16 bytes in control and 33 bytes to store
the strings. 



## Compilation

HIF has a dual cmake and a bazel build setup to make it easy to use as a library.

### optional abseil

If your system has abseil, the library can go faster using the flat_hash_map.
To enable use the -DUSE_ABSL_MAP=1



## Why not XXX?

### json

* HIF is more dense than json.
* json is not very fast to parse because it allows more arbitrary data serialization
* json is very generic, and hence does not have code structure that tools can be built around

### Binary serializers like protobuf/capnproto/....

* 
', '0', 'https://api.github.com/repos/masc-ucsc/hif/releases{/id}', '1', NULL, '76', 'git@github.com:masc-ucsc/hif.git', '9', 'https://api.github.com/repos/masc-ucsc/hif/stargazers', 'https://api.github.com/repos/masc-ucsc/hif/statuses/{sha}', '19', 'https://api.github.com/repos/masc-ucsc/hif/subscribers', 'https://api.github.com/repos/masc-ucsc/hif/subscription', 'https://github.com/masc-ucsc/hif', 'https://api.github.com/repos/masc-ucsc/hif/tags', 'https://api.github.com/repos/masc-ucsc/hif/teams', 'https://api.github.com/repos/masc-ucsc/hif/git/trees{/sha}', 'ucsc', '2024-12-15 13:03:17+00', 'https://api.github.com/repos/masc-ucsc/hif', 'public', '9', '9', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/branches{/branch}', 'https://github.com/UCSC-VLAA/MicroDiffusion.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/contents/{+path}', NULL, '["TheFllood"]', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/contributors', '2024-03-13 07:00:18+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/deployments', '[CVPR 2024] This repository includes the official implementation our paper "MicroDiffusion: Implicit Representation-Guided Diffusion for 3D Reconstruction from Limited 2D Microscopy Projections"', '0', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/downloads', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/events', '0', '0', '0', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/forks', 'UCSC-VLAA/MicroDiffusion', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/git/tags{/sha}', 'git://github.com/UCSC-VLAA/MicroDiffusion.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/hooks', 'https://github.com/UCSC-VLAA/MicroDiffusion', '22', '0', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/merges', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/milestones{/number}', NULL, 'MicroDiffusion', 'R_kgDOLfocZA', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/notifications{?since,all,participating}', '2', '2', '1', 'UCSC-VLAA', 0.9, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/pulls{/number}', '2024-05-13 19:38:31+00', '# MicroDiffusion: Implicit Representation-Guided Diffusion for 3D Reconstruction from Limited 2D Microscopy Projections

This is the official repository for our paper: "MicroDiffusion: Implicit Representation-Guided Diffusion for 3D Reconstruction from Limited 2D Microscopy Projections."


## Abstract:
Volumetric optical microscopy using non-diffracting beams enables rapid imaging of 3D volumes by projecting them axially to 2D images but lacks crucial depth information. Addressing this, we introduce MicroDiffusion, a pioneering tool facilitating high-quality, depth-resolved 3D volume reconstruction from limited 2D projections. 
While existing Implicit Neural Representation (INR) models often yield incomplete outputs and Denoising Diffusion Probabilistic Models (DDPM) excel at capturing details, our method integrates INR''s structural coherence with DDPM''s fine-detail enhancement capabilities. We pretrain an INR model to transform 2D axially-projected images into a preliminary 3D volume. This pretrained INR acts as a global prior guiding DDPM''s generative process through a linear interpolation between INR outputs and noise inputs. This strategy enriches the diffusion process with structured 3D information, enhancing detail and reducing noise in localized 2D images.
By conditioning the diffusion model on the closest 2D projection, MicroDiffusion substantially enhances fidelity in resulting 3D reconstructions, surpassing INR and standard DDPM outputs with unparalleled image quality and structural fidelity.


<div align="center">
  <img src="figures/model.png"/>
</div>
<div align="center">
  <img src="figures/panel.png"/>
</div>

## Data and Weight
Our data and weight are available at [DropBox](https://www.dropbox.com/scl/fo/wq9yfbcanv186zkzfvb8y/AF08CJuhrzb6zGHxGPVQnxM?rlkey=l144vlr4d7vi6t24clxyyp4r5&dl=0)

## Citation

If you find our work helpful, please consider citing:

```bibtex
@article{hui2024microdiffusion,
  title     = {MicroDiffusion: Implicit Representation-Guided Diffusion for 3D Reconstruction from Limited 2D Microscopy Projections},
  author    = {Hui, Mude and Wei, Zihao and Zhu, Hongru and Xia, Fei and Zhou, Yuyin.},
  journal   = {Conference on Computer Vision and Pattern Recognition (CVPR)},
  year      = {2024},
}
```

## Acknowledge
This work is partially supported by TPU Research Cloud (TRC) program, and Google Cloud Research Credits program.

The code is built on [nerfmm](https://github.com/ActiveVisionLab/nerfmm) and [classifier-free-diffusion-guidance-Pytorch](https://github.com/coderpiaobozhe/classifier-free-diffusion-guidance-Pytorch?tab=readme-ov-file). Many thanks to the awesome works from the open-source community!
', '0', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/releases{/id}', '1', NULL, '1708', 'git@github.com:UCSC-VLAA/MicroDiffusion.git', '40', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/stargazers', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/statuses/{sha}', '3', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/subscribers', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/subscription', 'https://github.com/UCSC-VLAA/MicroDiffusion', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/tags', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/teams', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion/git/trees{/sha}', 'ucsc', '2025-02-10 12:33:55+00', 'https://api.github.com/repos/UCSC-VLAA/MicroDiffusion', 'public', '40', '40', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/branches{/branch}', 'https://github.com/UCSC-VLAA/Recap-DataComp-1B.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/contents/{+path}', NULL, '["TheFllood","ImKeTT"]', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/contributors', '2024-06-12 08:29:42+00', 'master', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/deployments', 'This is the official repository of our paper "What If We Recaption Billions of Web Images with LLaMA-3 ?"', '0', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/downloads', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/events', '0', '1', '1', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/forks', 'UCSC-VLAA/Recap-DataComp-1B', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/git/tags{/sha}', 'git://github.com/UCSC-VLAA/Recap-DataComp-1B.git', '0', '1', '1', '0', '1', '0', 'https://www.haqtu.me/Recap-Datacomp-1B/', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/hooks', 'https://github.com/UCSC-VLAA/Recap-DataComp-1B', '23', '0', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/labels{/name}', NULL, 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/merges', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/milestones{/number}', NULL, 'Recap-DataComp-1B', 'R_kgDOMIVRxg', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/notifications{?since,all,participating}', '9', '9', '1', 'UCSC-VLAA', 0.83, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/pulls{/number}', '2024-06-13 14:49:22+00', E'

# <div align="center">👉 What If We Recaption Billions of Web Images with LLaMA-3?<div> 



<div align="center">
  <a href="https://github.com/UCSC-VLAA/Recap-DataComp-1B"><img src="https://img.shields.io/static/v1?label=Recap-DataComp1B Code&message=Github&color=blue&logo=github-pages"></a> &ensp;

  <a href="https://www.haqtu.me/Recap-Datacomp-1B"><img src="https://img.shields.io/static/v1?label=Project%20Page&message=Github&color=blue&logo=github-pages"></a> &ensp;
  <a href="https://huggingface.co/datasets/UCSC-VLAA/Recap-DataComp-1B"><img src="https://img.shields.io/static/v1?label=Recap-DataComp1B&message=HF&color=yellow"></a> &ensp;
  <a href="https://arxiv.org/abs/2406.08478"><img src="https://img.shields.io/static/v1?label=Paper&message=Arxiv:Recap-DataComp1B&color=red&logo=arxiv"></a> &ensp;
</div>

---



> [**What If We Recaption Billions of Web Images with LLaMA-3?**](https://www.haqtu.me/Recap-Datacomp-1B/)<br>
> [Xianhang Li*](https://xhl-video.github.io/xianhangli/), [Haoqin Tu*](https://www.haqtu.me), 
> [Mude Hui*](https://thefllood.github.io/mudehui.github.io/), [Zeyu Wang*](https://scholar.google.com/citations?user=hqDyTg8AAAAJ&hl=zh-CN&oi=ao),
> [Bingchen Zhao*](https://bzhao.me/),
> [Junfei Xiao](https://lambert-x.github.io/), [Sucheng Ren](https://oliverrensu.github.io/), 
> [Jieru Mei](https://meijieru.com/), [Qing Liu](https://qliu24.github.io/), 
> [Huangjie Zheng](https://huangjiezheng.com/), 
> [Yuyin Zhou](https://yuyinzhou.github.io/),
> [Cihang Xie](https://cihangxie.github.io/)
> <br>UC Santa Cruz, University of Edinburgh, JHU, Adobe, UT Austin<br>


---
## Breaking News 🔥🔥!!

- [🔥June. 12, 2024.] 💥 We are excited to announce the release of Recap-DataComp-1B. Stay tuned for the upcoming release of our models!!!

Star 🌟us if you think it is helpful!!


---
## 🚩 **New Features/Updates**

- ✅ June. 12, 2024. Release the dataset.  <a href="https://huggingface.co/datasets/UCSC-VLAA/Recap-DataComp-1B"><img src="https://img.shields.io/static/v1?label=Recap-DataComp1B&message=HF&color=yellow"></a> &ensp;

---

## Contents
* [Dataset & Model Zoo](#-dataset-model)
* [Download Datasets](#-download-data)
* [Acknowledgement](#acknowledgements)
* [Citation](#bibtex)

---

## 🐱 Abstract
<b>TL; DR: <font color="red">Recap-Datacomp-1B</font>is a large-scale image-text dataset that has been recaptioned using an advanced LLaVA-1.5-LLaMA3-8B model to enhance the alignment and detail of textual descriptions.</b>

<details><summary>CLICK for the full abstract</summary>
Web-crawled image-text pairs are inherently noisy. Prior studies demonstrate that
semantically aligning and enriching textual descriptions of these pairs can significantly
enhance model training across various vision-language tasks, particularly
text-to-image generation. However, large-scale investigations in this area remain
predominantly closed-source. Our paper aims to bridge this community effort,
leveraging the powerful and open-sourced LLaMA-3, a GPT-4 level LLM. Our
recaptioning pipeline is simple: first, we fine-tune a LLaMA-3-8B powered LLaVA-
1.5 and then employ it to recaption ∼1.3 billion images from the DataComp-1B
dataset. Our empirical results confirm that this enhanced dataset, Recap-DataComp-
1B, offers substantial benefits in training advanced vision-language models. For
discriminative models like CLIP, we observe enhanced zero-shot performance in
cross-modal retrieval tasks. For generative models like text-to-image Diffusion
Transformers, the generated images exhibit a significant improvement in alignment
with users’ text instructions, especially in following complex queries.
</details>

---

![Examples of the original caption and our recaption in DataComp-1B, and word distributions.](assets/images/teaser.png)
![Examples of the generateed results of different DiT models trained on Recap-DataComp-1B.](assets/images/visual_00.png)
---

## 🔥🔥Dataset and Model Zoo

We are pleased to announce the release of our recaptioned datasets, including Recap-DataComp-1B and Recap-COCO-30K, as well as our caption model, LLaVA-1.5-LLaMA3-8B. Stay tuned for the upcoming release of our CLIP and T2I models!

| Dataset           | #Samples | url                                                                                                                                                                                                          |
|:------------------|:---------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Recap-DataComp-1B | 1.24B    |https://huggingface.co/datasets/UCSC-VLAA/Recap-DataComp-1B |
| Recap-COCO-30K    | 30.5K    |https://huggingface.co/datasets/UCSC-VLAA/Recap-COCO-30K |





| Model                        | Type              | url                                                           |
|:-----------------------------|:------------------|:--------------------------------------------------------------|
| LLaVA-1.5-LLaMA3-8B          | Our caption model | https://huggingface.co/tennant/llava-llama-3-8b-hqedit        |
| Recap-CLIP                   | CLIP              | https://huggingface.co/UCSC-VLAA/ViT-L-16-HTxt-Recap-CLIP     |
| Recap-DiT                    | text2image        | incoming                                                      |



---

## 🔥🔥Download dataset

1. Download all the shards contains url and captions from [huggingface](https://huggingface.co/datasets/UCSC-VLAA/Recap-DataComp-1B/tree/main/data/train_data).
2. Use [img2dataset](https://github.com/rom1504/img2dataset) tool to  download the images and captions.
3. Example script:
```bash
img2dataset --url_list Recap-DataComp-1B/train_data  --input_format "parquet" \\
--url_col "url" --caption_col "re_caption" --output_format webdataset \\
--output_folder recap_datacomp_1b_data --processes_count 16 --thread_count 128 \\
--save_additional_columns ''["org_caption"]'' --enable_wandb True
```

---



## 💪To-Do List

- [] Model Release



## 📖BibTeX
  
```
@article{li2024recaption,
      title={What If We Recaption Billions of Web Images with LLaMA-3?}, 
      author={Xianhang Li and Haoqin Tu and Mude Hui and Zeyu Wang and Bingchen Zhao and Junfei Xiao and Sucheng Ren and Jieru Mei and Qing Liu and Huangjie Zheng and Yuyin Zhou and Cihang Xie},
      journal={arXiv preprint arXiv:2406.08478},
      year={2024}
}
```


## 🤗Acknowledgements
This work is partially supported by a gift from Adobe, TPU Research Cloud (TRC) program, Google
Cloud Research Credits program, AWS Cloud Credit for Research program, Edinburgh International
Data Facility (EIDF) and the Data-Driven Innovation Programme at the University of Edinburgh.

---
## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=UCSC-VLAA/Recap-DataComp-1B&type=Date)](https://star-history.com/#UCSC-VLAA/Recap-DataComp-1B&Date)
', '0', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/releases{/id}', '1', NULL, '63790', 'git@github.com:UCSC-VLAA/Recap-DataComp-1B.git', '127', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/stargazers', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/statuses/{sha}', '5', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/subscribers', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/subscription', 'https://github.com/UCSC-VLAA/Recap-DataComp-1B', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/tags', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/teams', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B/git/trees{/sha}', 'ucsc', '2025-02-26 02:37:50+00', 'https://api.github.com/repos/UCSC-VLAA/Recap-DataComp-1B', 'public', '127', '127', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/branches{/branch}', 'https://github.com/UCSC-VLAA/CRATE-alpha.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/contents/{+path}', NULL, '["Rayjryang","cihangxie"]', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/contributors', '2024-05-07 16:47:17+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/deployments', 'This repository includes the official implementation our paper "Scaling White-Box Transformers for Vision"', '0', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/downloads', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/events', '0', '1', '1', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/forks', 'UCSC-VLAA/CRATE-alpha', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/git/tags{/sha}', 'git://github.com/UCSC-VLAA/CRATE-alpha.git', '0', '1', '1', '0', '1', '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/hooks', 'https://github.com/UCSC-VLAA/CRATE-alpha', '24', '0', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/languages', NULL, NULL, 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/merges', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/milestones{/number}', NULL, 'CRATE-alpha', 'R_kgDOL4aDSA', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/notifications{?since,all,participating}', '1', '1', '1', 'UCSC-VLAA', 0.92, '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/pulls{/number}', '2024-06-03 07:00:37+00', '# Scaling White-Box Transformers for Vision

This repo contains official JAX implementation of CRATE-alpha in our paper: [Scaling White-Box Transformers for Vision](https://arxiv.org/abs/2405.20299)

We propose **CRATE-α**, featuring strategic yet minimal modifications to the sparse coding block in the **CRATE** architecture design, and a light training recipe designed to improve the scalability of **CRATE**.

<p align="left">
  <img src="figs/crate-alpha-arch.png" width="1080">
   One layer of the CRATE-α model architecture. 
   <span class="math">MSSA</span> (<strong>M</strong>ulti-head <strong>S</strong>ubspace <strong>S</strong>elf-<strong>A</strong>ttention) represents the compression block, and <tt>ODL</tt> (<strong>O</strong>vercomplete <strong>D</strong>ictionary <strong>L</strong>earning) represents the sparse coding block.
</p>



## Comparison of CRATE, CRATE-α, and ViT

<p align="left">
  <img src="figs/fig_1_crate_alpha.png" width="1080">
  <i>Left:</i> We demonstrate how modifications to the components enhance the performance of the <b>CRATE</b> model on ImageNet-1K. <i>Right:</i> We compare the FLOPs and accuracy on ImageNet-1K of our methods with ViT <a href="https://arxiv.org/abs/2010.11929">Dosovitskiy et al., 2020</a> and CRATE <a href="https://ma-lab-berkeley.github.io/CRATE/">Yu et al., 2023</a>. CRATE is trained only on ImageNet-1K, while <b>ours</b> and ViT are pre-trained on ImageNet-21K.
</p>


## Visualize the Improvement of Semantic Interpretability of **CRATE-α**.

<p align="left">
  <img src="figs/figure_cutler_segmentation.png" width="1080">
  <strong>Visualization of segmentation on COCO val2017 <a href="https://arxiv.org/abs/1405.0312">Lin et al., 2014</a> with MaskCut <a href="https://arxiv.org/abs/2301.11320">Wang et al., 2023</a>.</strong>  
  <em>Top row</em>: Supervised <strong>ours</strong> effectively identifies the main objects in the image. Compared with <strong>CRATE</strong> (<em>Middle row</em>), <strong>ours</strong> achieves better segmentation performance in terms of boundary.
  <em>Bottom row</em>: Supervised ViT fails to identify the main objects in most images. We warp the failed image in a red box.
</p>




## Experimental Results


| Models (Base)             | ImageNet-1K(%) |  | Models (Large)             | ImageNet-1K(%) |
|---------------------------|----------------|--|-----------------------------|----------------|
| CRATE-α-B/32              | 76.5           |  | CRATE-α-L/32                | 80.2           |
| CRATE-α-B/16              | 81.2           |  | CRATE-α-L/14                | 83.9           |
| CRATE-α-B/8               | 83.2           |  | CRATE-α-L/8                 | 85.1           |


## Download Model Weights

You can download model weights from the following link: [Model Weights](https://huggingface.co/UCSC-VLAA/CRATE-alpha/tree/main/jax)


## TPU Usage and Environment Installation

### TPU Usage

Our experiments are conducted on TPUs. How can we gain access to and set up TPU machines? Check this [brief doc](https://github.com/UCSC-VLAA/CLIPA/blob/master/TPU_USAGE.md) in [CLIPA](https://github.com/UCSC-VLAA/CLIPA).

### Environment Installation

To set up the environment, run the following script:

```bash
bash scripts/env/setup_env.sh
```

## Training

### Classification Training

We provide scripts for pre-training on ImageNet-21K and fine-tuning on ImageNet-1K.

#### Pre-training on ImageNet-21K

To start pre-training on ImageNet-21K, run:

```bash
bash scripts/in1k/pre_training_in21k.sh
```

#### Fine-tuning on ImageNet-1K

To start fine-tuning on ImageNet-1K, run:

```bash
bash scripts/in1k/fine_tuning_in1k.sh
```

### Vision-Language Contrastive Learning Training

We provide scripts for pre-training and fine-tuning on Datacomp1B.

#### Pre-training on Datacomp1B

To start pre-training on Datacomp1B, run:

```bash
bash scripts/clipa/pre_train.sh
```

#### Fine-tuning on Datacomp1B

To start fine-tuning on Datacomp1B, run:

```bash
bash scripts/clipa/fine_tune.sh
```


## PyTorch Inference 

To increase accessibility, we have converted the weights from JAX to PyTorch. We provide models in configurations B/16, L/14, CRATE-α-CLIPA-L/14, and CRATE-α-CLIPA-H/14. You can use the PyTorch code to reproduce the results from our paper.

### Preparing ImageNet-1K Validation Set

You can download the ImageNet-1K validation set using the following commands:

```bash
wget https://image-net.org/data/ILSVRC/2012/ILSVRC2012_img_val.tar 
wget https://image-net.org/data/ILSVRC/2012/ILSVRC2012_devkit_t12.tar.gz
```

###  Dependencies

For the PyTorch environment, the recommended dependencies are as follows:

```
pip install torch==2.0.0
pip install torchvision==0.15.0
pip install transformers==4.40.2
pip install open-clip-torch==2.24.0
```


### Reproducing Results on ImageNet-1K with PyTorch 

| Model                     | PyTorch Accuracy | JAX (Paper) Accuracy | PyTorch Weights                           |
|---------------------------|------------------|---------------------|-------------------------------------------|
| CRATE-α-B/16              | 81.2             | 81.2                | [Download](https://huggingface.co/UCSC-VLAA/CRATE-alpha/blob/main/torch/crate_alpha_B16.pth) |
| CRATE-α-L/14              | 83.9             | 83.9                | [Download](https://huggingface.co/UCSC-VLAA/CRATE-alpha/blob/main/torch/crate_alpha_L14.pth) |
| CRATE-α-CLIPA-L/14              | 69.8             | 69.8                | [Download](https://huggingface.co/UCSC-VLAA/CRATE-alpha/blob/main/torch/crate_alpha_CLIPA_L14.pth) |
| CRATE-α-CLIPA-H/14              | 72.3             | 72.3                | [Download](https://huggingface.co/UCSC-VLAA/CRATE-alpha/blob/main/torch/crate_alpha_CLIPA_H14.pth) |


### PyTorch Weights

Weights for the PyTorch models are available for download. Use the links provided in the table above.

### Classification

To run the evaluation code, specify the path to the checkpoints and the ImageNet validation set in the `eval_in1k_cls.py` file.

```bash
python torch_inference/eval_in1k_cls.py
```

### Zero-Shot on ImageNet-1K

For the CLIPA PyTorch version, we refer to [CLIP](https://github.com/openai/CLIP).

To run the evaluation code, specify the path to the checkpoints and the ImageNet validation set in the `eval_in1k.py` and `clipa_model.py` files. The default model is CRATE-α-CLIPA-L/14.

```bash
python torch_inference/eval_in1k.py
```



## Acknowledgement

The repo is built on [big vision](https://github.com/google-research/big_vision) and [CLIPA](https://github.com/UCSC-VLAA/CLIPA). Many thanks to the awesome works from the open-source community!


We are also very grateful that this work is supported by a gift from Open Philanthropy, TPU Research Cloud (TRC) program, and Google Cloud Research Credits program.


## Citation

```
@article{yang2024cratealpha,
  title   = {Scaling White-Box Transformers for Vision},
  author  = {Yang, Jinrui and Li, Xianhang and Pai, Druv and Zhou, Yuyin and Ma, Yi and Yu, Yaodong and Xie, Cihang},
  journal = {arXiv preprint arXiv:2405.20299},
  year    = {2024}
}
```

## Contact
If you have any questions, please feel free to raise an issue or contact us directly: jyang347@ucsc.edu.
', '0', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/releases{/id}', '1', NULL, '2380', 'git@github.com:UCSC-VLAA/CRATE-alpha.git', '46', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/stargazers', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/statuses/{sha}', '2', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/subscribers', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/subscription', 'https://github.com/UCSC-VLAA/CRATE-alpha', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/tags', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/teams', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha/git/trees{/sha}', 'ucsc', '2025-01-24 11:44:59+00', 'https://api.github.com/repos/UCSC-VLAA/CRATE-alpha', 'public', '46', '46', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values (NULL, '1', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/assignees{/user}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/git/blobs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/branches{/branch}', 'https://github.com/UCSC-VLAA/o1_medical.git', NULL, 'https://api.github.com/repos/UCSC-VLAA/o1_medical/collaborators{/collaborator}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/compare/{base}...{head}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/contents/{+path}', NULL, '["Chtholly17","yunfeixie233"]', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/contributors', '2024-09-23 00:03:12+00', 'main', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/deployments', NULL, '0', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/downloads', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/events', '0', '1', '1', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/forks', 'UCSC-VLAA/o1_medical', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/git/commits{/sha}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/git/refs{/sha}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/git/tags{/sha}', 'git://github.com/UCSC-VLAA/o1_medical.git', '0', '1', '1', '0', '1', '0', NULL, 'https://api.github.com/repos/UCSC-VLAA/o1_medical/hooks', 'https://github.com/UCSC-VLAA/o1_medical', '25', '0', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/issues/comments{/number}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/issues/events{/number}', 'Directory exists', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/issues{/number}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/keys{/key_id}', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/labels{/name}', 'Python', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/languages', 'other', NULL, 'https://api.github.com/repos/UCSC-VLAA/o1_medical/merges', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/milestones{/number}', NULL, 'o1_medical', 'R_kgDOM1jYVQ', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/notifications{?since,all,participating}', '1', '1', '1', 'UCSC-VLAA', 0.84, '0', '# Thank you for contributing an eval! ♥️

🚨 Please make sure your PR follows these guidelines, **failure to follow the guidelines below will result in the PR being closed automatically**. Note that even if the criteria are met, that does not guarantee the PR will be merged nor GPT-4 access be granted. 🚨

**PLEASE READ THIS**:

In order for a PR to be merged, it must fail on GPT-4. We are aware that right now, users do not have access, so you will not be able to tell if the eval fails or not. Please run your eval with GPT-3.5-Turbo, but keep in mind as we run the eval, if GPT-4 gets higher than 90% on the eval, we will likely reject it since GPT-4 is already capable of completing the task.

We plan to roll out a way for users submitting evals to see the eval performance on GPT-4 soon. Stay tuned! Until then, you will not be able to see the eval performance on GPT-4. **Starting April 10, the minimum eval count is 15 samples, we hope this makes it easier to create and contribute evals.**

Also, please note that we''re using **Git LFS** for storing the JSON files, so please make sure that you move the JSON file to Git LFS before submitting a PR. Details on how to use Git LFS are available [here](https://git-lfs.com).

## Eval details 📑

### Eval name

[Insert Eval name here]

### Eval description

[Insert a short description of what your eval does here]

### What makes this a useful eval?

[Insert why this eval is worth including and any additional context]

## Criteria for a good eval ✅

Below are some of the criteria we look for in a good eval. In general, we are seeking cases where the model does not do a good job despite being capable of generating a good response (note that there are some things large language models cannot do, so those would not make good evals).

Your eval should be:

- [ ] Thematically consistent: The eval should be thematically consistent. We''d like to see a number of prompts all demonstrating some particular failure mode. For example, we can create an eval on cases where the model fails to reason about the physical world.
- [ ] Contains failures where a human can do the task, but either GPT-4 or GPT-3.5-Turbo could not.
- [ ] Includes good signal around what is the right behavior. This means either a correct answer for `Basic` evals or the `Fact` Model-graded eval, or an exhaustive rubric for evaluating answers for the `Criteria` Model-graded eval.
- [ ] **Include at least 15 high-quality examples.**

If there is anything else that makes your eval worth including, please document it below.

### Unique eval value

> Insert what makes your eval high quality that was not mentioned above. (Not required)

## Eval structure 🏗️

Your eval should

- [ ] Check that your data is in `evals/registry/data/{name}`
- [ ] Check that your YAML is registered at `evals/registry/evals/{name}.yaml`
- [ ] Ensure you have the right to use the data you submit via this eval

(For now, we will only be approving evals that use one of the existing eval classes. You may still write custom eval classes for your own cases, and we may consider merging them in the future.)

## Final checklist 👀

### Submission agreement

By contributing to Evals, you are agreeing to make your evaluation logic and data under the same MIT license as this repository. You must have adequate rights to upload any data used in an Eval. OpenAI reserves the right to use this data in future service improvements to our product. Contributions to OpenAI Evals will be subject to our usual Usage Policies (<https://platform.openai.com/docs/usage-policies>).

- [ ] I agree that my submission will be made available under an MIT license and complies with OpenAI''s usage policies.

### Email address validation

If your submission is accepted, we will be granting GPT-4 access to a limited number of contributors. Access will be given to the email address associated with the commits on the merged pull request.

- [ ] I acknowledge that GPT-4 access will only be granted, if applicable, to the email address used for my merged pull request.

### Limited availability acknowledgment

We know that you might be excited to contribute to OpenAI''s mission, help improve our models, and gain access to GPT-4. However, due to the requirements mentioned above and the high volume of submissions, we will not be able to accept all submissions and thus not grant everyone who opens a PR GPT-4 access. We know this is disappointing, but we hope to set the right expectation before you open this PR.

- [ ] I understand that opening a PR, even if it meets the requirements above, does not guarantee the PR will be merged nor GPT-4 access be granted.

### Submit eval

- [ ] I have filled out all required fields of this form
- [ ] I have used **Git LFS** for the Eval JSON data
- [ ] (Ignore if not submitting code) I have run `pip install pre-commit; pre-commit install` and have verified that `mypy`, `black`, `isort`, `autoflake` and `ruff` are running when I commit and push

Failure to fill out all required fields will result in the PR being closed.

### Eval JSON data

Since we are using Git LFS, we are asking eval submitters to add in as many Eval Samples (at least 5) from their contribution here:

<details>
  <summary>View evals in JSON</summary>

  ### Eval
  ```jsonl
  INSERT_EVAL_HERE
  ```
</details>
', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/pulls{/number}', '2025-02-26 08:54:47+00', E'
# <div align="center">A Preliminary Study of o1 in Medicine: Are We Closer to an AI Doctor<img src="./resources/ai_doctor.png" alt="AI Doctor" style="width: 30px; vertical-align: middle;">?</div>

<div align="center">
  <a href="https://github.com/UCSC-VLAA/o1_medicine"><img src="https://img.shields.io/static/v1?label=Code&message=Available&color=blue&logo=github"></a>  
  <a href="https://ucsc-vlaa.github.io/o1_medicine/"><img src="https://img.shields.io/static/v1?label=Project%20Page&message=Available&color=blue&logo=githubpages"></a>  
  <a href="http://arxiv.org/abs/2409.15277"><img src="https://img.shields.io/static/v1?label=Paper&message=Available&color=red&logo=arxiv"></a>  
  <a href="https://huggingface.co/datasets/UCSC-VLAA/o1_medical"><img src="https://img.shields.io/static/v1?label=Dataset&message=Available&color=brightgreen&logo=huggingface"></a>  
</div>


---

> **A Preliminary Study of o1 in Medicine: Are We Closer to an AI Doctor?** 

 [Yunfei Xie*](https://yunfeixie233.github.io/), [Juncheng Wu*](https://chtholly17.github.io), [Haoqin Tu*](https://www.haqtu.me/), [Siwei Yang*](https://laos-y.github.io/#about), [Bingchen Zhao](https://bzhao.me/), [Yongshuo Zong](https://ys-zong.github.io/), [Qiao Jin](https://andy-jqa.github.io/), [Cihang Xie](https://cihangxie.github.io/), [Yuyin Zhou](https://yuyinzhou.github.io/)

<sup>*</sup> Equal technical contribution  
<sup>1</sup> UC Santa Cruz, <sup>2</sup> University of Edinburgh, <sup>3</sup> National Institutes of Health

---

## 📢 Breaking News

- **[📄💥 September 24, 2024] [Our arXiv paper is released](http://arxiv.org/abs/2409.15277).**


### Performances Overview
<div style="width: 100%; margin: 0 auto;">
  <p align="center">
    <img src="./resources/radar_chart.png" alt="Overall results of o1 and other 4 strong LLMs" width="100%">
  </p>
  <p align="left"><strong>Figure 1:</strong> Overall results of o1 and other 4 strong LLMs. We show performance on 12 medical datasets spanning diverse domains. o1 demonstrates a clear performance advantage over closed- and open-source models.</p>
</div>

<div style="width: 100%; margin: 0 auto;">
  <p align="center">
    <img src="./resources/bar.png" alt="Average accuracy of o1 and other 4 strong LLMs" width="100%">
  </p>
  <p align="left"><strong>Figure 2:</strong> Average accuracy of o1 and other 4 strong LLMs. o1 achieves the highest average accuracy of 73.3% across 19 medical datasets.</p>
</div>

---

## 🏥 Our Pipeline

<p align="center">
  <img src="./resources/pipeline.png" width="100%">
</p>

<p align="left"><strong>Figure 3:</strong> Our evaluation pipeline comprises different evaluation (a) <em>aspects</em> containing various <em>tasks</em>. We collect multiple (b) <em>datasets</em> for each task, combining them with various (c) <em>prompt strategies</em> to evaluate the latest (d) <em>language models</em>. We leverage a comprehensive set of (e) <em>evaluations</em> to present a holistic view of model progress in the medical domain.</p>

---

## 🚀 Performances of o1

<p align="center">
  <img src="./resources/table1.png" width="100%">
</p>

<p align="left"><strong>Table 1:</strong> Accuracy (Acc.) or F1 results on 4 tasks across 2 aspects. Model performances with * are taken from <cite>Wu et al. (2024)</cite> as the reference. We also present the average score (Average) of each metric in the table.</p>


<p align="center">
  <img src="./resources/table2.png" width="100%">
</p>

<p align="left"><strong>Table 2:</strong> BLEU-1 (B-1) and ROUGE-1 (R-1) results on 3 tasks across 2 aspects. We use the gray background to highlight o1 results. We also present the average score (Average) of each metric.</p>

<p align="center">
  <img src="./resources/table3.png" width="100%">
</p>

<p align="left"><strong>Table 3:</strong> Accuracy of models on the multilingual task, XMedBench <cite>Wang et al. (2024)</cite>.</p>

<p align="center">
  <img src="./resources/table4.png" width="100%">
</p>

<p align="left"><strong>Table 4:</strong> Accuracy of LLMs on two agentic benchmarks.</p>

<p align="center">
  <img src="./resources/table5.png" width="100%">
</p>

<p align="left"><strong>Table 5:</strong> Accuracy results of model outputs with/without CoT prompting on 5 knowledge QA datasets.</p>

---

## 🔍 Case Study

<p align="center">
  <img src="./resources/case_1.png" width="100%">
</p>

<p align="left"><strong>Figure 4:</strong> Comparison of the answers from o1 and GPT-4 for a question from NEJM. o1 provides a more concise and accurate reasoning process compared to GPT-4.</p>

<p align="center">
  <img src="./resources/hos_case_1.png" width="100%">
</p>

<p align="left"><strong>Figure 5:</strong> Comparison of the answers from o1 and GPT-4 for a case from the Chinese dataset AI Hospital, along with its English translation. o1 offers a more precise diagnosis and practical treatment suggestions compared to GPT-4.</p>

---

## 🛠️ Setup

### Setting Up Evals

To set up the evaluation framework, clone our repository and run the setup script:

```bash
git clone https://github.com/UCSC-VLAA/o1_eval.git
cd o1_eval
bash setup.sh
```

### Configuring OpenAI API

Create a `.env` file in the root directory and add your OpenAI API credentials:

```bash
OPENAI_ORGANIZATION_ID=...
OPENAI_API_KEY=...
```

## 📊 Evaluation on Existing Data

### Overview of Datasets

We include the prompts and inquiries used in our paper. The detailed datasets are listed below, except for LancetQA and NEJMQA due to copyright.


<p align="center">
  <img src="./resources/dataset.png" width="100%">
</p>

### Running Evaluations on No-Agent Tasks

In the `eval_bash` directory, there are evaluation scripts corresponding to each dataset. Simply run the scripts to perform the evaluations.

```bash
bash eval_bash/eval_dataset_name/eval_script.sh
```


### Running Evaluations on Agent Tasks

#### AgentClinic

1. Clone the AgentClinic repository:
   ```bash
   git clone https://github.com/SamuelSchmidgall/AgentClinic/
   ```
   Follow the installation instructions provided in the repository''s `README.md`.

2. To run evaluations, execute the following bash command with the specified parameters:
   ```bash
   python agentclinic.py --doctor_llm o1-preview \\
        --patient_llm o1-preview --inf_type llm \\
        --agent_dataset dataset --doctor_image_request False \\
        --num_scenarios 220 \\
        --total_inferences 20 --openai_client
   ```
   - `--agent_dataset`: You can choose between `MedQA` or `NEJM_Ext`.

#### AI Hospital

1. Clone the AI Hospital repository:
   ```bash
   git clone https://github.com/LibertFan/AI_Hospital
   ```
   Follow the installation instructions provided in the repository''s `README.md`.

2. To run evaluations, execute the following bash command with the specified parameters:
   ```bash
   python run.py --patient_database ./data/patients_sample_200.json \\
    --doctor_openai_api_key $OPENAI_API_KEY \\
    --doctor Agent.Doctor.GPT --doctor_openai_model_name o1-preview \\
    --patient Agent.Patient.GPT --patient_openai_model_name gpt-3 \\
    --reporter Agent.Reporter.GPT --reporter_openai_model_name gpt-3 \\
    --save_path outputs/dialog_history_iiyi/dialog_history_gpto1_200.jsonl \\
    --max_conversation_turn 10 --max_workers 2 --parallel
   ```
   - Note: We evaluated only the first 200 records from AI Hospital due to cost constraints.




## 📈 Evaluation on New Data

Our evaluation framework is fully based on [OpenAI Evals](https://github.com/openai/evals). OpenAI Evals provides a framework for evaluating large language models (LLMs) or systems built using LLMs. It offers an existing registry of evaluations to test different dimensions of OpenAI models and the ability to write your own custom evaluations for use cases you care about. You can also use your data to build private evaluations representing the common LLM patterns in your workflow without exposing any of that data publicly.

For detailed instructions on creating and running custom evaluations, please refer to the [OpenAI Evals documentation](https://github.com/openai/evals).

---

## 🙏 Acknowledgement

This work is partially supported by the OpenAI Researcher Access Program and Microsoft Accelerate Foundation Models Research Program. [Q.J.](https://andy-jqa.github.io/) is supported by the NIH Intramural Research Program, National Library of Medicine. The content is solely the responsibility of the authors and does not necessarily represent the official views of the funding agencies.

---

## 📜 Citation

If you find this work useful for your research and applications, please cite using this BibTeX:

```bibtex
@misc{xie2024preliminarystudyo1medicine,
      title={A Preliminary Study of o1 in Medicine: Are We Closer to an AI Doctor?}, 
      author={Yunfei Xie and Juncheng Wu and Haoqin Tu and Siwei Yang and Bingchen Zhao and Yongshuo Zong and Qiao Jin and Cihang Xie and Yuyin Zhou},
      year={2024},
      eprint={2409.15277},
      archivePrefix={arXiv},
      primaryClass={cs.CL},
      url={https://arxiv.org/abs/2409.15277}, 
}
```


## 🔗 Related Projects

- [MedS-Bench](https://github.com/MAGIC-AI4Med/MedS-Ins)

---
', '0', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/releases{/id}', '1', '# Security Policy
For a more in-depth look at our security policy, please check out our [Coordinated Vulnerability Disclosure Policy](https://openai.com/security/disclosure/#:~:text=Disclosure%20Policy,-Security%20is%20essential&text=OpenAI%27s%20coordinated%20vulnerability%20disclosure%20policy,expect%20from%20us%20in%20return.).

Our PGP key is located [at this address.](https://cdn.openai.com/security.txt)
', '16468', 'git@github.com:UCSC-VLAA/o1_medical.git', '44', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/stargazers', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/statuses/{sha}', '1', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/subscribers', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/subscription', 'https://github.com/UCSC-VLAA/o1_medical', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/tags', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/teams', 'https://api.github.com/repos/UCSC-VLAA/o1_medical/git/trees{/sha}', 'ucsc', '2025-02-28 00:03:30+00', 'https://api.github.com/repos/UCSC-VLAA/o1_medical', 'public', '44', '44', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values (NULL, '1', 'https://api.github.com/repos/masc-ucsc/hagent/{archive_format}{/ref}', '0', 'https://api.github.com/repos/masc-ucsc/hagent/assignees{/user}', 'https://api.github.com/repos/masc-ucsc/hagent/git/blobs{/sha}', 'https://api.github.com/repos/masc-ucsc/hagent/branches{/branch}', 'https://github.com/masc-ucsc/hagent.git', NULL, 'https://api.github.com/repos/masc-ucsc/hagent/collaborators{/collaborator}', 'https://api.github.com/repos/masc-ucsc/hagent/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hagent/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hagent/compare/{base}...{head}', 'https://api.github.com/repos/masc-ucsc/hagent/contents/{+path}', NULL, '["renau","rabieifk","mjao1","renovatebot","sssithal"]', 'https://api.github.com/repos/masc-ucsc/hagent/contributors', '2024-11-28 01:13:51+00', 'main', 'https://api.github.com/repos/masc-ucsc/hagent/deployments', 'Hardware Agent', '0', 'https://api.github.com/repos/masc-ucsc/hagent/downloads', 'https://api.github.com/repos/masc-ucsc/hagent/events', '0', '1', '1', 'https://api.github.com/repos/masc-ucsc/hagent/forks', 'masc-ucsc/hagent', 'https://api.github.com/repos/masc-ucsc/hagent/git/commits{/sha}', 'https://api.github.com/repos/masc-ucsc/hagent/git/refs{/sha}', 'https://api.github.com/repos/masc-ucsc/hagent/git/tags{/sha}', 'git://github.com/masc-ucsc/hagent.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/masc-ucsc/hagent/hooks', 'https://github.com/masc-ucsc/hagent', '26', '0', 'https://api.github.com/repos/masc-ucsc/hagent/issues/comments{/number}', 'https://api.github.com/repos/masc-ucsc/hagent/issues/events{/number}', NULL, 'https://api.github.com/repos/masc-ucsc/hagent/issues{/number}', 'https://api.github.com/repos/masc-ucsc/hagent/keys{/key_id}', 'https://api.github.com/repos/masc-ucsc/hagent/labels{/name}', 'Python', 'https://api.github.com/repos/masc-ucsc/hagent/languages', 'other', NULL, 'https://api.github.com/repos/masc-ucsc/hagent/merges', 'https://api.github.com/repos/masc-ucsc/hagent/milestones{/number}', NULL, 'hagent', 'R_kgDONV1prw', 'https://api.github.com/repos/masc-ucsc/hagent/notifications{?since,all,participating}', '8', '8', '1', 'masc-ucsc', 0.84, '0', NULL, 'https://api.github.com/repos/masc-ucsc/hagent/pulls{/number}', '2025-03-04 21:34:02+00', '
![HAgent logo](./docs/hagent_logo.png)

# HAgent

An AI hardware agent engine to support multiple components in chip design, such as code generation, verification, debugging, and tapeout.

HAgent stands for **Hardware Agent**, and it consists of a set of Python programs and support libraries that can be used to build agents resembling a compiler pipeline (pipe). A pipeline is built out of multiple compiler passes or steps (step). Each step is hermetic with respect to HAgent and uses YAML files as input and output to simplify debugging, testing, and ease of development.

## Quick Introduction

### Prerequisites

- **Python 3.8** or higher
- **[Poetry](https://python-poetry.org/docs/#installation)** for managing dependencies
- **Yosys**: Required for benchmarking and testing

### Installation

Install with Python Poetry:

```bash
poetry install
```

If updating HAgent, you may need to update Poetry dependencies too:

```bash
poetry lock
poetry install
```

Each HAgent pipeline may use a different set of LLMs. Overall, we use litellm which support most LLM providers. Set the required API keys (depends on the pipe that you use):

```bash
export OPENAI_API_KEY=.....
export SAMBANOVA_API_KEY=....
```

### Usage

The `HAgent` script provides several commands to help you generate multiple Ninja files for each step in chip design.

### Examples

Regression test use FIREWORKS for unit testing. As such, you need to set:
```
export FIREWORKS_AI_API_KEY=whatever_key_you_like_most
```

To run all the hagent tests:
```
poetry run pytest
```

To verbose model:
```
poetry run pytest -v
```

Samples with coverage information:
```
poetry run pytest --cov=hagent
poetry run pytest --cov=hagent/tool --cov-report=html
```

Run a subset of tests with coverage:
```
poetry run pytest hagent/tool/ --cov=hagent/tool --cov-report=html
```

Check issues and format with ruff:
```
poetry run ruff check hagent
poetry run ruff format hagent
```

To generate the top level API specification:
```
 poetry run pydoc-markdown >spec.md
 poetry run pydoc-markdown -p hagent/tool --render-toc  >spec_tool.md
```

#### Trivial

Run the trivial test (hagent/step/tests/test_trivial.py)
```
poetry run pytest -k "test_trivial"
```

Run a command line trivial.py pass with specific input:
```
mkdir tmp
cd tmp
poetry run ../hagent/step/trivial/trivial.py ../hagent/step/trivial/tests/input1.yaml -ofoo.yaml
cat foo.yaml
description: |
  test1
  2nd line
```

Gather coverage information about your step (htmlcov):
```
poetry run pytest --cov=hagent/step/trivial
poetry run pytest --cov=hagent/step/trivial --cov-report=html
```

## Example of some command line test cases using HAgent

Agent to iterate over buggy Verilog to fix it until it complies correctly with slang:
```
cd tmp
poetry run python3 ../hagent/tool/tests/test_react_compile_slang_simple.py ../hagent/tool/tests/buggy_verilog.v
```


## Structure

HAgent code is divided into four key components:

- **core**: Contains multiple Python files with shared functionality across steps.
  - When common functionality is used by several steps or tools, the logic is to push the code to core as a Python library.

- **step**: Has a subdirectory for each HAgent compiler step.
  - Each step has a stand-alone Python executable that matches the directory name.
  - Each step only reads and writes YAML files. There may also exist a log file that matches the output YAML name.
  - Each step should be hermetic, relying only on the input YAML files or calling tools.
  - Each step inherits from a core Step class and provides basic functionality.
  - **Examples**: `trivial`, `get_spec_io`

- **tool**: Has a subdirectory for each external tool.
  - Each tool requires a different Python library.
  - Each tool inherits from a core tool class and provides a common interface to check tool existence, calling, handling warnings and errors, and other common APIs shared across most tools.
  - **Examples**: `yosys`, `slang`, `chisel`

- **pipe**: Has a subdirectory for each end-user HAgent compiler.
  - Each pipe has a stand-alone Python executable that matches the directory name.
  - Each pipe combines several HAgent steps and is intended to be called by a user.
  - Each pipe can have multiple iterative sets of step calls.
  - Some differences between pipe and step:
    - A step is supposed to be simple and can have multiple running in parallel.
    - A pipe can have command line options and non-yaml inputs or outputs.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request on GitHub.

If you want to work on this project, reach out Jose Renau. Most steps and pipes have a different
code owner.

When contributors submit feel free to add yourself to the CREDITS.txt file that each step, tool, core, pipe has.

## License

We intend to keep HAgent perpetually open source and to use a liberal open source
[LICENSE](LICENSE) (BSD 3-Clause). As a contributor to the project, you agree that any
contributions be licensed under the terms of the BSD 3-Clause license shown at the root directory.
The BSD 3-Clause license boils down to this:

* You can freely distribute.
* You must retain the copyright notice if you redistribute.
* Binaries derived must reproduce the copyright notice (e.g. in an included readme file).
* You can not use contributor names to promote your derived products.
* There’s no warranty at all.

When you create a new code file, it should include "See LICENSE for details." in the first line of the file.

## Support

If you encounter any issues or have questions, please open an issue on GitHub.

## Build Flow

HAgent is mostly build with AI tools as a way to learn insights/ideas for HAgent flow. A typical
class creation follows these steps:

### Create the API

Use the following prompt, to create a first API, and iterate with Human-in-the-loop until happy with it.

"""
Build a new Hagent tool API. This is a high level explanation for HAgent:
<include hagent/spec.md>

This class is a HAgent tool, as such this is a relevant information and example:
<include hagent/tool/spec.md>


Create a high level plan and Class API without code for a Hagent tool using the following characteristics:
<some explanation on what the tool should do>

A sample code that can be used as a guide for how to use the tool:
<some code snippets>
"""

### Create the Simple Example

Use the following prompt, to create a simple use case example, and iterate with Human-in-the-loop until happy with it. If it requires to change the API, fix it.

"""
Assuming a HAgent class with the following API, create a simple use case example that demonstrates the class usage and has some simple testing. This is not a unit testing, just a sample to highligh the API usage.
<API>

As a reference, this is a simple test example for another HAgent tool
<include hagent/tool/test/test_chisel2v_simple.py -- or another closer example>
"""

### Generate the code

Use the API and the simple example, use the following prompt to implement the code.

"""
Build a Python implementation for the following class API:
<API>

This class is a HAgent tool, as such this is a relevant information and example:
<include hagent/tool/spec.md>

A sample usage for the class to implement is the following code:
<test_xxx_simple.py>

Create the class Python implementation, do not write unit test or explanation outside the class.
"""
', '0', 'https://api.github.com/repos/masc-ucsc/hagent/releases{/id}', '1', NULL, '597', 'git@github.com:masc-ucsc/hagent.git', '5', 'https://api.github.com/repos/masc-ucsc/hagent/stargazers', 'https://api.github.com/repos/masc-ucsc/hagent/statuses/{sha}', '17', 'https://api.github.com/repos/masc-ucsc/hagent/subscribers', 'https://api.github.com/repos/masc-ucsc/hagent/subscription', 'https://github.com/masc-ucsc/hagent', 'https://api.github.com/repos/masc-ucsc/hagent/tags', 'https://api.github.com/repos/masc-ucsc/hagent/teams', 'https://api.github.com/repos/masc-ucsc/hagent/git/trees{/sha}', 'ucsc', '2025-03-04 21:34:05+00', 'https://api.github.com/repos/masc-ucsc/hagent', 'public', '5', '5', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/VLSIDA/OpenRAM/{archive_format}{/ref}', '0', 'https://api.github.com/repos/VLSIDA/OpenRAM/assignees{/user}', 'https://api.github.com/repos/VLSIDA/OpenRAM/git/blobs{/sha}', 'https://api.github.com/repos/VLSIDA/OpenRAM/branches{/branch}', 'https://github.com/VLSIDA/OpenRAM.git', NULL, 'https://api.github.com/repos/VLSIDA/OpenRAM/collaborators{/collaborator}', 'https://api.github.com/repos/VLSIDA/OpenRAM/comments{/number}', 'https://api.github.com/repos/VLSIDA/OpenRAM/commits{/sha}', 'https://api.github.com/repos/VLSIDA/OpenRAM/compare/{base}...{head}', 'https://api.github.com/repos/VLSIDA/OpenRAM/contents/{+path}', 'We are happy to accept contributions to OpenRAM and encourage this!
This document will let you know our preferred methodology for
including your contributions.

If you are unsure about a contribution, please email our development
list at openram-dev-group@ucsc.edu. We are happy to give insights into
the best way to implement a change to ensure your contribution will be
accepted and help other OpenRAM users.

# Directory Structure

* compiler - openram compiler itself (pointed to by OPENRAM_HOME)
  * compiler/base - base data structure modules
  * compiler/pgates - parameterized cells (e.g. logic gates)
  * compiler/bitcells - various bitcell styles
  * compiler/modules - high-level modules (e.g. decoders, etc.)
  * compiler/verify - DRC and LVS verification wrappers
  * compiler/characterizer - timing characterization code
  * compiler/gdsMill - GDSII reader/writer
  * compiler/router - router for signals and power supplies
  * compiler/tests - unit tests
* technology - openram technology directory (pointed to by OPENRAM_TECH)
  * technology/freepdk45 - example configuration library for [FreePDK45 technology node
  * technology/scn4m_subm - example configuration library [SCMOS] technology node
  * technology/scn3me_subm - unsupported configuration (not enough metal layers)
  * technology/setup_scripts - setup scripts to customize your PDKs and OpenRAM technologies
* docs - LaTeX manual (outdated)
* lib - IP library of pregenerated memories

# Code Style

Our code may not be the best and we acknowledge that. We welcome 
suggested changes to our coding style, but we also encourage users
to follow our styles so that OpenRAM remains a cohesive codebase.

# Testing

The most important consideration is that your changes should not break
other OpenRAM features. Please see the README.md file on how to run
the unit tests. Unit tests should work in all technologies. We will run
the tests on your contributions before they will be accepted.

# Internal Development

For internal development, follow all of the following steps EXCEPT
do not fork your own copy. Instead, create a branch in our private repository
and consult with me when you want to merge it into the dev branch.
All unit tests should pass first.

# Pull Request Process

1. One time, create a GitHub account at http://github.com

2. Create a fork of the OpenRAM project on the github web page:
   https://github.com/vlsida/openram
   It is on the upper right and says "Fork": This will make your own
   OpenRAM repository on GitHub in your account.

3. Clone your repository (or use an existing cloned copy if you''ve
   already done this once):
```
  git clone https://github.com/<youruser>/oepnram.git
  cd openram
```

4. Set up a new upstream that points to MY OpenRAM repository that you
   forked (only first time):
```
   git remote add upstream https://github.com/vlsida/openram.git
```
   You now have two remotes for this project:
   * origin which points to your GitHub fork of the project. You can read
     and write to this remote.
   * upstream which points to the main project''s GitHub repository. You can
     only read from this remote.
   You can remove remotes with
```
  git remote remove upstream
```
   if you previously added the one with the git@github that required
   authentication.

5. Start with dev:
```
 git checkout dev
```
  "dev" is the name of the branch that 
  is the development version. You should submit all contributions as changes
  to the dev branch. "master" is the name of the branch that is the release version of the
  code (in your fork of the repository). You can check out the released
  code with "git checkout master”. 

6. Make your own branch from dev. The number one rule is to put each piece of
   work on its own branch:
```
  git checkout -b useful-branch-name
```
   Note that this is shorthand for:
```
  git branch useful-branch-name
  git checkout useful-branch-name
```

7. Edit your code and make commits:
```
  <edit files>
  git add <new files>
  git commit -m "Useful comment" <files changed>
```
   OR (sparingly, to commit all changes):
```
  git status
  <check that all the changed files are correct and should be committed>
  git commit -a -m "Useful comment"
```
   Run the unit tests entirely. Fix all bugs.

8. After you are done (or while you are editing and you see changes in
   MY dev branch) make sure you have the most recent from MY dev
   and merge any changes. Pull the updated copy from MY master dev in
   MY repository:
```
 git pull upstream dev
```

9. Frequently rebase your branch to keep track of current changes in dev. 
```
 git fetch upstream
 git rebase origin/dev
```

10. After a final rebase and your code is working, push your branch to YOUR repository:
```
 git push -u origin useful-branch-name
```
   Remember origin is your copy on github and useful-branch-name is the
   branch that you made to contain all your changes.
   The -u flag links this branch with the remote one, so that in the
   future, you can simply type git push origin. Do not rebase after you push 
   the branch!

11. When you are done, go to GitHub and you will see a button to notify
   me.  Press the button and it will notify me of your pushed branch.
   This will have you fill in a form for the contribution that gets sent
   to me.

12. I will review the request and may have you fix stuff if the tests
    don''t pass, you didn''t merge all my changes in dev from other
    contributions, or your style of code is bad.

13. Go back to step 3 for your next contribution. Remember, you can
    push/pull work to your repository all the time and can pull from my
    dev as well. Make sure to add large features so that You don''t have
    to add lots of pull requests.
', '["mguthaus","hznichol","jcirimel","erendn","samuelkcrow","bugraonal","mtgrimes","polymerizedsage","vlsida-bot","bkoppelmann","aditisinha23","bugraonalUCSC","hadirkhan10","mithro","binmwu","lekez2005","thracesystems","gmejiamtz","mole99","olofk","growly","davideschiavone","sfmth","dpetrisko","bovi","eva08"]', 'https://api.github.com/repos/VLSIDA/OpenRAM/contributors', '2016-11-02 17:07:54+00', 'stable', 'https://api.github.com/repos/VLSIDA/OpenRAM/deployments', 'An open-source static random access memory (SRAM) compiler.', '0', 'https://api.github.com/repos/VLSIDA/OpenRAM/downloads', 'https://api.github.com/repos/VLSIDA/OpenRAM/events', '0', '216', '216', 'https://api.github.com/repos/VLSIDA/OpenRAM/forks', 'VLSIDA/OpenRAM', 'https://api.github.com/repos/VLSIDA/OpenRAM/git/commits{/sha}', 'https://api.github.com/repos/VLSIDA/OpenRAM/git/refs{/sha}', 'https://api.github.com/repos/VLSIDA/OpenRAM/git/tags{/sha}', 'git://github.com/VLSIDA/OpenRAM.git', '0', '1', '1', '1', '0', '0', 'http://www.openram.org', 'https://api.github.com/repos/VLSIDA/OpenRAM/hooks', 'https://github.com/VLSIDA/OpenRAM', '27', '0', 'https://api.github.com/repos/VLSIDA/OpenRAM/issues/comments{/number}', 'https://api.github.com/repos/VLSIDA/OpenRAM/issues/events{/number}', 'Directory exists', 'https://api.github.com/repos/VLSIDA/OpenRAM/issues{/number}', 'https://api.github.com/repos/VLSIDA/OpenRAM/keys{/key_id}', 'https://api.github.com/repos/VLSIDA/OpenRAM/labels{/name}', 'Python', 'https://api.github.com/repos/VLSIDA/OpenRAM/languages', 'bsd-3-clause', NULL, 'https://api.github.com/repos/VLSIDA/OpenRAM/merges', 'https://api.github.com/repos/VLSIDA/OpenRAM/milestones{/number}', NULL, 'OpenRAM', 'MDEwOlJlcG9zaXRvcnk3MjY2Mjc1Mw==', 'https://api.github.com/repos/VLSIDA/OpenRAM/notifications{?since,all,participating}', '51', '51', '1', 'VLSIDA', 0.86, '0', NULL, 'https://api.github.com/repos/VLSIDA/OpenRAM/pulls{/number}', '2024-11-14 08:01:33+00', '![](https://raw.githubusercontent.com/VLSIDA/OpenRAM/stable/images/OpenRAM_logo_yellow_transparent.svg)
# OpenRAM

[![Python 3.5](https://img.shields.io/badge/Python-3.5-green.svg)](https://www.python.org/)
[![License: BSD 3-clause](https://raw.githubusercontent.com/VLSIDA/OpenRAM/stable/images/license_badge.svg)](./LICENSE)
[![PyPI - Downloads](https://img.shields.io/pypi/dm/openram?color=brightgreen&label=PyPI)](https://pypi.org/project/openram/)
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://githubtocolab.com/sfmth/openram-playground/blob/main/OpenRAM.ipynb)

An open-source static random access memory (SRAM) compiler.



# What is OpenRAM?
<img align="right" width="25%" src="https://raw.githubusercontent.com/VLSIDA/OpenRAM/stable/images/SCMOS_16kb_sram.jpg">

OpenRAM is an award winning open-source Python framework to create the layout,
netlists, timing and power models, placement and routing models, and
other views necessary to use SRAMs in ASIC design. OpenRAM supports
integration in both commercial and open-source flows with both
predictive and fabricable technologies.



# Documentation

Please see our [documentation][documentation] and let us know if anything needs
updating.



# Get Involved

+ [Port it](./PORTING.md) to a new technology
+ Report bugs by submitting [Github issues]
+ Develop new features (see [how to contribute](./CONTRIBUTING.md))
+ Submit code/fixes using a [Github pull request]
+ Follow our [project][Github project]
+ Read and cite our [ICCAD paper][OpenRAMpaper]



# Further Help

+ [Documentation][documentation]
+ [OpenRAM Slack Workspace][Slack]
+ [OpenRAM Users Group][user-group] ([subscribe here][user-group-subscribe])
+ [OpenRAM Developers Group][dev-group] ([subscribe here][dev-group-subscribe])



# License

OpenRAM is licensed under the [BSD 3-Clause License](./LICENSE).



# Publications

+ [M. R. Guthaus, J. E. Stine, S. Ataei, B. Chen, B. Wu, M. Sarwar, "OpenRAM: An Open-Source Memory Compiler," Proceedings of the 35th International Conference on Computer-Aided Design (ICCAD), 2016.](https://escholarship.org/content/qt8x19c778/qt8x19c778_noSplash_b2b3fbbb57f1269f86d0de77865b0691.pdf)
+ [S. Ataei, J. Stine, M. Guthaus, "A 64 kb differential single-port 12T SRAM design with a bit-interleaving scheme for low-voltage operation in 32 nm SOI CMOS," International Conference on Computer Design (ICCD), 2016, pp. 499-506.](https://escholarship.org/uc/item/99f6q9c9)
+ [E. Ebrahimi, M. Guthaus, J. Renau, "Timing Speculative SRAM," IEEE International Symposium on Circuits and Systems (ISCAS), 2017.](https://escholarship.org/content/qt7nn0j5x3/qt7nn0j5x3_noSplash_172457455e1aceba20694c3d7aa489b4.pdf)
+ [B. Wu, J.E. Stine, M.R. Guthaus, "Fast and Area-Efficient Word-Line Optimization,"  IEEE International Symposium on Circuits and Systems (ISCAS), 2019.](https://escholarship.org/content/qt98s4c1hp/qt98s4c1hp_noSplash_753dcc3e218f60aafff98ef77fb56384.pdf)
+ [B. Wu, M. Guthaus, "Bottom Up Approach for High Speed SRAM Word-line Buffer Insertion Optimization," IFIP/IEEE International Conference on Very Large Scale Integration (VLSI-SoC), 2019.](https://ieeexplore.ieee.org/document/8920325)
+ [H. Nichols, M. Grimes, J. Sowash, J. Cirimelli-Low, M. Guthaus "Automated Synthesis of Multi-Port Memories and Control," IFIP/IEEE International Conference on Very Large Scale Integration (VLSI-SoC), 2019.](https://escholarship.org/content/qt7047n3k0/qt7047n3k0.pdf?t=q4gcij)
+ [M. Guthaus, H. Nichols, J. Cirimelli-Low, J. Kunzler, B. Wu, "Enabling Design Technology Co-Optimization of SRAMs though Open-Source Software," IEEE International Electron Devices Meeting (IEDM), 2020.](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9372047)
+ [H. Nichols, "Statistical Modeling of SRAMs," M.S. Thesis, UCSC, 2022.](https://escholarship.org/content/qt7vx9n089/qt7vx9n089_noSplash_cfc4ba479d8eb1b6ec25d7c92357bc18.pdf?t=ra9wzr)



# Contributors & Acknowledgment

- [Matthew Guthaus] from [VLSIDA] created the OpenRAM project and is the lead architect.
- [James Stine] from [VLSIARCH] co-founded the project.
- Many students: Hunter Nichols, Michael Grimes, Jennifer Sowash, Yusu Wang, Joey Kunzler, Jesse Cirimelli-Low, Samira Ataei, Bin Wu, Brian Chen, Jeff Butera, Sage Walker

If I forgot to add you, please let me know!



[Matthew Guthaus]:       https://users.soe.ucsc.edu/~mrg
[James Stine]:           https://ece.okstate.edu/content/stine-james-e-jr-phd
[VLSIDA]:                https://vlsida.soe.ucsc.edu
[VLSIARCH]:              https://vlsiarch.ecen.okstate.edu/
[OpenRAMpaper]:          https://ieeexplore.ieee.org/document/7827670/

[Github issues]:         https://github.com/VLSIDA/OpenRAM/issues
[Github pull request]:   https://github.com/VLSIDA/OpenRAM/pulls
[Github project]:        https://github.com/VLSIDA/OpenRAM

[documentation]:         docs/source/index.md
[dev-group]:             mailto:openram-dev-group@ucsc.edu
[user-group]:            mailto:openram-user-group@ucsc.edu
[dev-group-subscribe]:   mailto:openram-dev-group+subscribe@ucsc.edu
[user-group-subscribe]:  mailto:openram-user-group+subscribe@ucsc.edu

[Klayout]:               https://www.klayout.de/
[Magic]:                 http://opencircuitdesign.com/magic/
[Netgen]:                http://opencircuitdesign.com/netgen/
[Qflow]:                 http://opencircuitdesign.com/qflow/history.html
[Ngspice]:               http://ngspice.sourceforge.net/
[Xyce]:                  http://xyce.sandia.gov/
[Git]:                   https://git-scm.com/

[FreePDK45]:             https://www.eda.ncsu.edu/wiki/FreePDK45:Contents
[SCMOS]:                 https://www.mosis.com/files/scmos/scmos.pdf
[Sky130]:                https://github.com/google/skywater-pdk-libs-sky130_fd_bd_sram.git

[Slack]:                 https://join.slack.com/t/openram/shared_invite/zt-onim74ue-zlttW5XI30xvdBlJGJF6JA


', '0', 'https://api.github.com/repos/VLSIDA/OpenRAM/releases{/id}', '1', NULL, '75451', 'git@github.com:VLSIDA/OpenRAM.git', '876', 'https://api.github.com/repos/VLSIDA/OpenRAM/stargazers', 'https://api.github.com/repos/VLSIDA/OpenRAM/statuses/{sha}', '56', 'https://api.github.com/repos/VLSIDA/OpenRAM/subscribers', 'https://api.github.com/repos/VLSIDA/OpenRAM/subscription', 'https://github.com/VLSIDA/OpenRAM', 'https://api.github.com/repos/VLSIDA/OpenRAM/tags', 'https://api.github.com/repos/VLSIDA/OpenRAM/teams', 'https://api.github.com/repos/VLSIDA/OpenRAM/git/trees{/sha}', 'ucsc', '2025-03-03 03:00:04+00', 'https://api.github.com/repos/VLSIDA/OpenRAM', 'public', '876', '876', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/eric-ai-lab/photoswap/{archive_format}{/ref}', '0', 'https://api.github.com/repos/eric-ai-lab/photoswap/assignees{/user}', 'https://api.github.com/repos/eric-ai-lab/photoswap/git/blobs{/sha}', 'https://api.github.com/repos/eric-ai-lab/photoswap/branches{/branch}', 'https://github.com/eric-ai-lab/photoswap.git', NULL, 'https://api.github.com/repos/eric-ai-lab/photoswap/collaborators{/collaborator}', 'https://api.github.com/repos/eric-ai-lab/photoswap/comments{/number}', 'https://api.github.com/repos/eric-ai-lab/photoswap/commits{/sha}', 'https://api.github.com/repos/eric-ai-lab/photoswap/compare/{base}...{head}', 'https://api.github.com/repos/eric-ai-lab/photoswap/contents/{+path}', NULL, '["eric-xw","g-jing"]', 'https://api.github.com/repos/eric-ai-lab/photoswap/contributors', '2023-05-30 03:26:45+00', 'main', 'https://api.github.com/repos/eric-ai-lab/photoswap/deployments', 'Official implementation of the NeurIPS 2023 paper "Photoswap: Personalized Subject Swapping in Images"', '0', 'https://api.github.com/repos/eric-ai-lab/photoswap/downloads', 'https://api.github.com/repos/eric-ai-lab/photoswap/events', '0', '24', '24', 'https://api.github.com/repos/eric-ai-lab/photoswap/forks', 'eric-ai-lab/photoswap', 'https://api.github.com/repos/eric-ai-lab/photoswap/git/commits{/sha}', 'https://api.github.com/repos/eric-ai-lab/photoswap/git/refs{/sha}', 'https://api.github.com/repos/eric-ai-lab/photoswap/git/tags{/sha}', 'git://github.com/eric-ai-lab/photoswap.git', '0', '1', '1', '0', '1', '1', 'https://photoswap.github.io', 'https://api.github.com/repos/eric-ai-lab/photoswap/hooks', 'https://github.com/eric-ai-lab/photoswap', '28', '0', 'https://api.github.com/repos/eric-ai-lab/photoswap/issues/comments{/number}', 'https://api.github.com/repos/eric-ai-lab/photoswap/issues/events{/number}', NULL, 'https://api.github.com/repos/eric-ai-lab/photoswap/issues{/number}', 'https://api.github.com/repos/eric-ai-lab/photoswap/keys{/key_id}', 'https://api.github.com/repos/eric-ai-lab/photoswap/labels{/name}', 'Jupyter Notebook', 'https://api.github.com/repos/eric-ai-lab/photoswap/languages', 'mit', NULL, 'https://api.github.com/repos/eric-ai-lab/photoswap/merges', 'https://api.github.com/repos/eric-ai-lab/photoswap/milestones{/number}', NULL, 'photoswap', 'R_kgDOJpHQKA', 'https://api.github.com/repos/eric-ai-lab/photoswap/notifications{?since,all,participating}', '5', '5', '1', 'eric-ai-lab', 0.88, '0', NULL, 'https://api.github.com/repos/eric-ai-lab/photoswap/pulls{/number}', '2024-02-28 20:23:14+00', '# Photoswap: Personalized Subject Swapping in Images

[Jing Gu](https://g-jing.github.io/), [Yilin Wang](https://yilinwang.org/), [Nanxuan Zhao](http://nxzhao.com/), [Tsu-Jui Fu](https://tsujuifu.github.io/), [Wei Xiong](https://wxiong.me/), [Qing Liu](https://qliu24.github.io/), [Zhifei Zhang](https://zzutk.github.io/), [He Zhang](https://sites.google.com/site/hezhangsprinter/), [Jianming Zhang](https://cs-people.bu.edu/jmzhang/), [HyunJoon Jung](https://polaris79.wixsite.com/hjung), [Xin Eric Wang](https://eric-xw.github.io/)

NeurIPS 2023

[[Project Page](https://photoswap.github.io/)] [[Paper](https://arxiv.org/abs/2305.18286)]
![Teaser figure](figures/teaser-arxiv.png)

## Model Architecture
![Teaser figure](figures/architecture.png)


## TODO
- [ ] Release Benchmark  
- [x] Release code  

## :fire: News
* **[2023.07.08]** We have released our code.

## Concept Learning

### Training a model with your own concept
The new subject will be learned as a new token in the diffusion model. [Huggingface](https://github.com/huggingface/diffusers/tree/main/examples/) provides scripts for training. In detail, you could use [Text Inversion](https://github.com/huggingface/diffusers/tree/main/examples/textual_inversion), [DreamBooth](https://github.com/huggingface/diffusers/tree/main/examples/dreambooth), [Custom Diffusion](https://github.com/huggingface/diffusers/tree/main/examples/custom_diffusion), or any other concept learning model.
Be sure to install the package in the corresponding requirements.txt

 - More source images leads to a better learnt concept and therefore a better subject swap result. For example, more human face images during training leads to a better artistic figure transfer.
 - For DreamBooth, finetuning the encoder leads to a better performance, especially for human face. That would also requires more memory.

### Download PHOTPSWAP models

Please contact jgu110@ucsc.edu for checkpoints.

## Attention Swap

Following the below steps to do subject swapping:
1. Put the trained Diffusion Model checkpoint in `checkpoints` folder.
2. Install package using `requirements.txt` by ```pip install -r requirements.txt```. Note that the concept learning environment is not suitable for attention swap.
3. Running `real-image-swap.ipynb` for subject swapping. 

Different learnt concepts could have different swap steps for successful subject swapping. Tuning the swapping step and the text prompt for better performance. A concept model that has its weights tuned will have a degration in its ability on general concept generation. To do Subject Swapping with Photoswap, a single GPU with 16 GB memory is required.


## Citation
```
@misc{gu2023photoswap,
      title={Photoswap: Personalized Subject Swapping in Images}, 
      author={Jing Gu and Yilin Wang and Nanxuan Zhao and Tsu-Jui Fu and Wei Xiong and Qing Liu and Zhifei Zhang and He Zhang and Jianming Zhang and HyunJoon Jung and Xin Eric Wang},
      year={2023},
      journal={Advances in Neural Information Processing Systems}
}
```
', '0', 'https://api.github.com/repos/eric-ai-lab/photoswap/releases{/id}', '1', NULL, '23428', 'git@github.com:eric-ai-lab/photoswap.git', '347', 'https://api.github.com/repos/eric-ai-lab/photoswap/stargazers', 'https://api.github.com/repos/eric-ai-lab/photoswap/statuses/{sha}', '24', 'https://api.github.com/repos/eric-ai-lab/photoswap/subscribers', 'https://api.github.com/repos/eric-ai-lab/photoswap/subscription', 'https://github.com/eric-ai-lab/photoswap', 'https://api.github.com/repos/eric-ai-lab/photoswap/tags', 'https://api.github.com/repos/eric-ai-lab/photoswap/teams', 'https://api.github.com/repos/eric-ai-lab/photoswap/git/trees{/sha}', 'ucsc', '2025-03-03 10:47:40+00', 'https://api.github.com/repos/eric-ai-lab/photoswap', 'public', '347', '347', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/ucscXena/xenaPython/{archive_format}{/ref}', '0', 'https://api.github.com/repos/ucscXena/xenaPython/assignees{/user}', 'https://api.github.com/repos/ucscXena/xenaPython/git/blobs{/sha}', 'https://api.github.com/repos/ucscXena/xenaPython/branches{/branch}', 'https://github.com/ucscXena/xenaPython.git', NULL, 'https://api.github.com/repos/ucscXena/xenaPython/collaborators{/collaborator}', 'https://api.github.com/repos/ucscXena/xenaPython/comments{/number}', 'https://api.github.com/repos/ucscXena/xenaPython/commits{/sha}', 'https://api.github.com/repos/ucscXena/xenaPython/compare/{base}...{head}', 'https://api.github.com/repos/ucscXena/xenaPython/contents/{+path}', NULL, '["jingchunzhu","acthp","souravsingh"]', 'https://api.github.com/repos/ucscXena/xenaPython/contributors', '2017-04-26 06:20:31+00', 'master', 'https://api.github.com/repos/ucscXena/xenaPython/deployments', 'Python API for Xena Hub', '0', 'https://api.github.com/repos/ucscXena/xenaPython/downloads', 'https://api.github.com/repos/ucscXena/xenaPython/events', '0', '15', '15', 'https://api.github.com/repos/ucscXena/xenaPython/forks', 'ucscXena/xenaPython', 'https://api.github.com/repos/ucscXena/xenaPython/git/commits{/sha}', 'https://api.github.com/repos/ucscXena/xenaPython/git/refs{/sha}', 'https://api.github.com/repos/ucscXena/xenaPython/git/tags{/sha}', 'git://github.com/ucscXena/xenaPython.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/ucscXena/xenaPython/hooks', 'https://github.com/ucscXena/xenaPython', '29', '0', 'https://api.github.com/repos/ucscXena/xenaPython/issues/comments{/number}', 'https://api.github.com/repos/ucscXena/xenaPython/issues/events{/number}', NULL, 'https://api.github.com/repos/ucscXena/xenaPython/issues{/number}', 'https://api.github.com/repos/ucscXena/xenaPython/keys{/key_id}', 'https://api.github.com/repos/ucscXena/xenaPython/labels{/name}', 'Python', 'https://api.github.com/repos/ucscXena/xenaPython/languages', 'apache-2.0', NULL, 'https://api.github.com/repos/ucscXena/xenaPython/merges', 'https://api.github.com/repos/ucscXena/xenaPython/milestones{/number}', NULL, 'xenaPython', 'MDEwOlJlcG9zaXRvcnk4OTQ0NTM1Ng==', 'https://api.github.com/repos/ucscXena/xenaPython/notifications{?since,all,participating}', '3', '3', '1', 'ucscXena', 0.88, '0', NULL, 'https://api.github.com/repos/ucscXena/xenaPython/pulls{/number}', '2023-05-02 05:45:17+00', E'# xenaPython
Python API for querying Xena Hub

---------

#### Requirement
    support python2 python3


#### Installation
    pip install ''git+https://github.com/ucscXena/xenaPython''


#### Upgrade Installation
    pip install --upgrade ''git+https://github.com/ucscXena/xenaPython''


#### Usage
    >>> import xenaPython as xena

#### Examples

##### 1: Query four samples and three identifers expression
    import xenaPython as xena

    hub = "https://toil.xenahubs.net"
    dataset = "tcga_RSEM_gene_tpm"
    samples = ["TCGA-02-0047-01","TCGA-02-0055-01","TCGA-02-2483-01","TCGA-02-2485-01"]
    probes = [''ENSG00000282740.1'', ''ENSG00000000005.5'', ''ENSG00000000419.12'']
    [position, [ENSG00000282740_1, ENSG00000000005_5, ENSG00000000419_12]] = xena.dataset_probe_values(hub, dataset, samples, probes)
    ENSG00000282740_1
    
##### 2: Query four samples and three genes expression, when the dataset you want to query has a identifier-to-gene mapping (i.e. xena probeMap)
    hub = "https://toil.xenahubs.net"
    dataset = "tcga_RSEM_gene_tpm"
    samples = ["TCGA-02-0047-01","TCGA-02-0055-01","TCGA-02-2483-01","TCGA-02-2485-01"]
    genes =["TP53", "RB1", "PIK3CA"]
    xena.dataset_gene_probe_avg(hub, dataset, samples, genes)

##### 3: If the dataset does not have id-to-gene mapping, but the dataset used gene names as its identifier, you can query gene expression like example 1, example 2 will not work.
    hub = "https://toil.xenahubs.net"
    dataset = "tcga_RSEM_Hugo_norm_count"
    samples = ["TCGA-02-0047-01","TCGA-02-0055-01","TCGA-02-2483-01","TCGA-02-2485-01"]
    probes =["TP53", "RB1", "PIK3CA"]
    [position, [TP53, RB1, PIK3CA]] = xena.dataset_probe_values (hub, dataset, samples, probes)
    TP53

##### 4: Find out the samples in a dataset
    hub = "https://tcga.xenahubs.net"
    dataset = "TCGA.BLCA.sampleMap/HiSeqV2"
    xena.dataset_samples (hub, dataset, 10)
    xena.dataset_samples (hub, dataset, None)

##### 5: Find out the identifiers in a dataset
    hub = "https://tcga.xenahubs.net"
    dataset = "TCGA.BLCA.sampleMap/HiSeqV2"
    xena.dataset_field (hub, dataset)

##### 6. Find out the number of idnetifiers in a dataset
    hub = "https://tcga.xenahubs.net"
    dataset = "TCGA.BLCA.sampleMap/HiSeqV2"
    xena.dataset_field_n (hub, dataset)

##### 7. Get all the cohorts on a hub
    hub = "https://tcga.xenahubs.net"
    xena.all_cohorts(hub, [])

##### 8. Get data of a particular clinical/phenotypic feature from a cohort. This is assume that all the clinical/phenotype data of the cohort is on a single hub. 
#####    two examples provided: a categorical feature and a continuous feature
    def getFeatureCodes(hub, dataset, feature):
        # identify feature is categorical or continuous, if it is categorical, there will be codes associated with it, otherwise, codes will be none
        codes = xena.field_codes(hub, dataset, [feature])[0][''code'']
        if codes:
            codes = codes.split(''\\t'')
        return codes

    def getClinicalData(hub, cohort, target_feature):
        # find out all the datafiles (i.e. datasets) belong to a cohort
        datasets = xena.dataset_list(hub, [cohort])
        # filter to just clinicalMatrix type of data files
        datasets = list(filter(lambda x: x[''type''] == ''clinicalMatrix'', datasets))
        # collect all the phynotype features and their associated dataset from all the clinicalMatrix datasets
        features = []
        for dataset in datasets:
            for feature in xena.dataset_field(hub, dataset[''name'']):
                features.append([feature, dataset[''name'']])
        # find the target_feature among all the features, and the dataset it comes from 
        xenafield = list(filter(lambda f: f[0] == target_feature, features))
        if len(xenafield) == 0:
            print (target_feature, "not found")
            return [None, None]
        elif len(xenafield) == 1:
            dataset = xenafield[0][1]
            # query to get all the data from the target_feature
            # first, get all the samples in the cohort (a bit slower) 
            # samples = xena.cohort_samples(hub, cohort, None)
            # all the samples in the dataset (a bit faster), either will work, 		
            samples = xena.dataset_samples(hub, dataset, None)
            # second, get the data
            [position, [data]] = xena.dataset_probe_values (hub, dataset, samples, [target_feature])
            # thrid, identify feature is categorical or continuous, if it is categorical, there will be codes associated with it,
            codes = getFeatureCodes(hub, dataset, target_feature)
            if codes:
                data = [codes[int(x)] if x != ''NaN'' else ''NaN'' for x in data]
            return [samples, data]
        else:
            print ("there are more than one features match", target_feature)
            return [None, None]

    hub = ''https://tcga.xenahubs.net''
    cohort = ''TCGA Ovarian Cancer (OV)''
    target_feature = ''age_at_initial_pathologic_diagnosis''
    target_feature = ''sample_type''
    [samples, data] = getClinicalData(hub, cohort, target_feature)
    samples[:10], data[:10]
    
##### 9. Find out hub id, cohort id, dataset id
    use xena browser datasets tool:  https://xenabrowser.net/datapages/

#### Help
    >>> import xenaPython
    >>> help(xenaPython)
    
Help on package xenaPython:

NAME

    xenaPython - Methods for querying data from UCSC Xena hubs

DESCRIPTION

    Data rows are associated with "sample" IDs.
    Sample IDs are unique within a "cohort".
    A "dataset" is a particular assay of a cohort, e.g. gene expression.
    Datasets have associated metadata, specifying their data type and cohort.
    
    There are three primary data types: dense matrix (samples by probes),
    sparse (sample, position, variant), and segmented (sample, position, value).
    
    
    Dense matrices can be genotypic or phenotypic. Phenotypic matrices have
    associated field metadata (descriptive names, codes, etc.).
    
    Genotypic matricies may have an associated probeMap, which maps probes to
    genomic locations. If a matrix has hugo probeMap, the probes themselves
    are gene names. Otherwise, a probeMap is used to map a gene location to a
    set of probes.

FUNCTIONS

    all_cohorts(host, exclude)
    
    all_datasets(host)
    
    all_datasets_n(host)
        Count the number datasets with non-null cohort
    
    all_field_metadata(host, dataset)
        Metadata for all dataset fields (phenotypic datasets)
    
    cohort_samples(host, cohort, limit)
        All samples in cohort
    
    cohort_summary(host, exclude)
        Count datasets per-cohort, excluding the given dataset types
        
        xena.cohort_summary(xena.PUBLIC_HUBS["pancanAtlasHub"], ["probeMap"])
    
    dataset_fetch(host, dataset, samples, probes)
        Probe values for give samples
    
    dataset_field(host, dataset)
        All field (probe) names in dataset
    
    dataset_field_examples(host, dataset, count)
        Field names in dataset, up to <count>
    
    dataset_field_n(host, dataset)
        Number of fields in dataset
    
    dataset_gene_probe_avg(host, dataset, samples, genes)
        Probe average, per-gene, for given samples
    
    dataset_gene_probes_values(host, dataset, samples, genes)
        Probe values in gene, and probe genomic positions, for given samples
    
    dataset_list(host, cohorts)
        Dataset metadata for datasets in the given cohorts
    
    dataset_metadata(host, dataset)
        Dataset metadata
    
    dataset_probe_signature(host, dataset, samples, probes, weights)
        Computed probe signature for given samples and weight array
    
    dataset_probe_values(host, dataset, samples, probes)
        Probe values for given samples, and probe genomic positions
        
        host = xena.PUBLIC_HUBS["pancanAtlasHub"]
        dataset = "EB++AdjustPANCAN_IlluminaHiSeq_RNASeqV2.geneExp.xena"
        samples = xena.dataset_samples(host, dataset, None)
        [position, [foxm1, tp53]] = xena.dataset_probe_values(host, dataset, samples, ["FOXM1", "TP53"])
    
    dataset_samples(host, dataset, limit)
        All samples in dataset (optional limit)
        
        samples = xena.dataset_samples(xena.PUBLIC_HUBS["pancanAtlasHub"], "EB++AdjustPANCAN_IlluminaHiSeq_RNASeqV2.geneExp.xena", None)
    
    dataset_samples_n_dense_matrix(host, dataset)
        All samples in dataset (faster, for dense matrix dataset only)

    datasets_null_rows(host)
    
    feature_list(host, dataset)
        Dataset field names and long titles (phenotypic datasets)
    
    field_codes(host, dataset, fields)
        Codes for categorical fields
    
    field_metadata(host, dataset, fields)
        Metadata for given fields (phenotypic datasets)
    
    gene_transcripts(host, dataset, gene)
        Gene transcripts
    
    match_fields(host, dataset, names)
        Find fields matching names (must be lower-case)
    
    probe_count(host, dataset)
    
    probemap_list(host)
        Find probemaps
    
    ref_gene_exons(host, dataset, genes)
        Gene model
    
    ref_gene_position(host, dataset, gene)
        Gene position from gene model
    
    ref_gene_range(host, dataset, chr, start, end)
        Gene models overlapping range
    
    segment_data_examples(host, dataset, count)
        Initial segmented data rows, with limit
    
    segmented_data_range(host, dataset, samples, chr, start, end)
        Segmented (copy number) data overlapping range
    
    sparse_data(host, dataset, samples, genes)
        Sparse (mutation) data rows for genes
    
    sparse_data_examples(host, dataset, count)
        Initial sparse data rows, with limit
    
    sparse_data_match_field(host, field, dataset, names)
        Genes in sparse (mutation) dataset matching given names
    
    sparse_data_match_field_slow(host, field, dataset, names)
        Genes in sparse (mutation) dataset matching given names, case-insensitive (names must be lower-case)
    
    sparse_data_match_partial_field(host, field, dataset, names, limit)
        Partial match genes in sparse (mutation) dataset
    
    sparse_data_range(host, dataset, samples, chr, start, end)
        Sparse (mutation) data rows overlapping the given range, for the given samples
    
    transcript_expression(host, transcripts, studyA, subtypeA, studyB, subtypeB, dataset)

    
DATA

    LOCAL_HUB = ''https://local.xena.ucsc.edu:7223''
    PUBLIC_HUBS = {''gdcHub'': ''https://gdc.xenahubs.net'', ''icgcHub'': ''https...
    excludeType = [''probeMap'', ''probemap'', ''genePredExt'']
    
#### Contact
     http://xena.ucsc.edu/
     https://groups.google.com/forum/#!forum/ucsc-cancer-genomics-browser
     genome-cancer@soe.ucsc.edu


', '0', 'https://api.github.com/repos/ucscXena/xenaPython/releases{/id}', '1', NULL, '159', 'git@github.com:ucscXena/xenaPython.git', '53', 'https://api.github.com/repos/ucscXena/xenaPython/stargazers', 'https://api.github.com/repos/ucscXena/xenaPython/statuses/{sha}', '6', 'https://api.github.com/repos/ucscXena/xenaPython/subscribers', 'https://api.github.com/repos/ucscXena/xenaPython/subscription', 'https://github.com/ucscXena/xenaPython', 'https://api.github.com/repos/ucscXena/xenaPython/tags', 'https://api.github.com/repos/ucscXena/xenaPython/teams', 'https://api.github.com/repos/ucscXena/xenaPython/git/trees{/sha}', 'ucsc', '2025-02-10 13:26:13+00', 'https://api.github.com/repos/ucscXena/xenaPython', 'public', '53', '53', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('yes', '1', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/{archive_format}{/ref}', '0', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/assignees{/user}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/git/blobs{/sha}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/branches{/branch}', 'https://github.com/jlab-sensing/ENTS-backend.git', '
# Contributor Covenant Code of Conduct

## Our Pledge

We as members, contributors, and leaders pledge to make participation in our
community a harassment-free experience for everyone, regardless of age, body
size, visible or invisible disability, ethnicity, sex characteristics, gender
identity and expression, level of experience, education, socio-economic status,
nationality, personal appearance, race, caste, color, religion, or sexual
identity and orientation.

We pledge to act and interact in ways that contribute to an open, welcoming,
diverse, inclusive, and healthy community.

## Our Standards

Examples of behavior that contributes to a positive environment for our
community include:

* Demonstrating empathy and kindness toward other people
* Being respectful of differing opinions, viewpoints, and experiences
* Giving and gracefully accepting constructive feedback
* Accepting responsibility and apologizing to those affected by our mistakes,
  and learning from the experience
* Focusing on what is best not just for us as individuals, but for the overall
  community

Examples of unacceptable behavior include:

* The use of sexualized language or imagery, and sexual attention or advances of
  any kind
* Trolling, insulting or derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others'' private information, such as a physical or email address,
  without their explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

## Enforcement Responsibilities

Community leaders are responsible for clarifying and enforcing our standards of
acceptable behavior and will take appropriate and fair corrective action in
response to any behavior that they deem inappropriate, threatening, offensive,
or harmful.

Community leaders have the right and responsibility to remove, edit, or reject
comments, commits, code, wiki edits, issues, and other contributions that are
not aligned to this Code of Conduct, and will communicate reasons for moderation
decisions when appropriate.

## Scope

This Code of Conduct applies within all community spaces, and also applies when
an individual is officially representing the community in public spaces.
Examples of representing our community include using an official email address,
posting via an official social media account, or acting as an appointed
representative at an online or offline event.

## Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported to [John Madden](mailto:jtmadden@ucsc.edu).
All complaints will be reviewed and investigated promptly and fairly.

All community leaders are obligated to respect the privacy and security of the
reporter of any incident.

## Enforcement Guidelines

Community leaders will follow these Community Impact Guidelines in determining
the consequences for any action they deem in violation of this Code of Conduct:

### 1. Correction

**Community Impact**: Use of inappropriate language or other behavior deemed
unprofessional or unwelcome in the community.

**Consequence**: A private, written warning from community leaders, providing
clarity around the nature of the violation and an explanation of why the
behavior was inappropriate. A public apology may be requested.

### 2. Warning

**Community Impact**: A violation through a single incident or series of
actions.

**Consequence**: A warning with consequences for continued behavior. No
interaction with the people involved, including unsolicited interaction with
those enforcing the Code of Conduct, for a specified period of time. This
includes avoiding interactions in community spaces as well as external channels
like social media. Violating these terms may lead to a temporary or permanent
ban.

### 3. Temporary Ban

**Community Impact**: A serious violation of community standards, including
sustained inappropriate behavior.

**Consequence**: A temporary ban from any sort of interaction or public
communication with the community for a specified period of time. No public or
private interaction with the people involved, including unsolicited interaction
with those enforcing the Code of Conduct, is allowed during this period.
Violating these terms may lead to a permanent ban.

### 4. Permanent Ban

**Community Impact**: Demonstrating a pattern of violation of community
standards, including sustained inappropriate behavior, harassment of an
individual, or aggression toward or disparagement of classes of individuals.

**Consequence**: A permanent ban from any sort of public interaction within the
community.

## Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage],
version 2.1, available at
[https://www.contributor-covenant.org/version/2/1/code_of_conduct.html][v2.1].

Community Impact Guidelines were inspired by
[Mozilla''s code of conduct enforcement ladder][Mozilla CoC].

For answers to common questions about this code of conduct, see the FAQ at
[https://www.contributor-covenant.org/faq][FAQ]. Translations are available at
[https://www.contributor-covenant.org/translations][translations].

[homepage]: https://www.contributor-covenant.org
[v2.1]: https://www.contributor-covenant.org/version/2/1/code_of_conduct.html
[Mozilla CoC]: https://github.com/mozilla/diversity
[FAQ]: https://www.contributor-covenant.org/faq
[translations]: https://www.contributor-covenant.org/translations
', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/collaborators{/collaborator}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/comments{/number}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/commits{/sha}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/compare/{base}...{head}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/contents/{+path}', '# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue or any other method with the owners of this repository before making a change.

## Code Contributions

### Your first issue

1. Read the project''s README.md to learn how to setup the development environment.
2. Find an issue to work on. The best way is to look for the good first issue or help wanted labels
3. Comment on the issue saying you are going to work on it.
4. Code! Make sure to update unit tests!
5. When done, create your pull request.
6. Verify that CI passes all status checks, or fix if needed.
7. Wait for other developers to review your code and update code as needed.
8. Once reviewed and approved, a DirtViz developer will merge your pull request.

### Pull Request Process

1. Verify that CI passes all status checks, or fix if needed.
2. Update the pull request with details of changes to the interface, this includes new environment
    variables, exposed ports, useful file locations and container parameters.
3. Wait for other developers to review your code and update code as needed.
4. Once reviewed and approved, a DirtViz developer will merge your pull request.

## Code formatting

DirtViz uses various formmaters and linters to maintain a standard of code.

### Formmater

#### Black

For Python files, DirtViz uses Black to format files to keep coding styles consistent throughout the code base.

To install run:

```bash
pip install black
```

#### Prettier

For JSX files, DirtViz uses Prettier to format files to keep coding styles consistent throughout the code base.

To install Prettier, search up Prettier in VSCode extension marketplace and install it.

### Linting

#### Ruff

For Python files, DirtViz uses Ruff to lint for potential syntax/code errors.
Run ruff with the following commmand:

```bash
ruff check .
```

#### ESLint

For JSX files, DirtViz uses ESLint to lint for potential syntax/code errors.
Run ESLint with the following commmand while in the frontend folder:

```bash
npm run lint
```

## Attribution

Portions adopted from <https://github.com/rapidsai/cuml/blob/branch-24.04/CONTRIBUTING.md>
', '["jmadden173","aaron-wu1","aleclevy","dependabotbot","NA-CA","ahzired","ay-bh","dsridhar17","Stanley665"]', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/contributors', '2022-06-16 15:51:37+00', 'main', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/deployments', 'ENTS backend is a project to visualize data collected from a network of environmental sensors.', '0', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/downloads', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/events', '0', '13', '13', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/forks', 'jlab-sensing/ENTS-backend', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/git/commits{/sha}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/git/refs{/sha}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/git/tags{/sha}', 'git://github.com/jlab-sensing/ENTS-backend.git', '0', '1', '1', '0', '1', '1', 'https://dirtviz.jlab.ucsc.edu/', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/hooks', 'https://github.com/jlab-sensing/ENTS-backend', '30', '0', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/issues/comments{/number}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/issues/events{/number}', 'Directory exists', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/issues{/number}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/keys{/key_id}', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/labels{/name}', 'JavaScript', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/languages', 'mit', NULL, 'https://api.github.com/repos/jlab-sensing/ENTS-backend/merges', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/milestones{/number}', NULL, 'ENTS-backend', 'R_kgDOHg28yg', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/notifications{?since,all,participating}', '57', '57', '1', 'jlab-sensing', 0.91, '0', NULL, 'https://api.github.com/repos/jlab-sensing/ENTS-backend/pulls{/number}', '2025-02-25 23:25:07+00', E'# ![ENTS-Backend](.github/assets/img/ents_backend_logo.svg)

![Build](https://github.com/jlab-sensing/ENTS-backend/actions/workflows/deploy.yml/badge.svg?branch=main)
![Test](https://github.com/jlab-sensing/ENTS-backend/actions/workflows/test.yml/badge.svg?branch=main)
[![codecov](https://codecov.io/github/jlab-sensing/ENTS-backend/graph/badge.svg?token=L4PKSR61XU)](https://codecov.io/github/jlab-sensing/ENTS-backend)

Environmental Networked Sensing (ENTS) backend is part of the ENTS hardware and software ecosystem for outdoor sensor networks. It''s an open source data ingestion and visualization service that parses data from the hardware nodes and presents it in an easy-to-use web interface. Users can dynamically generate interactive plots, live monitor their sensors, or download data for offline processing. Our live version, DirtViz, is available at [https://dirtviz.jlab.ucsc.edu/](https://dirtviz.jlab.ucsc.edu/).

## Dependencies

| Dependency |
| ---------- |
| Python     |
| Node       |
| Docker     |

## Getting Started

### Starting Services

A local version of the ENTS backend can be started using `docker-compose.yml`. This will build the local images and start the required services in the background, including the database.

```console
docker compose up --build -d
```

At this point the backend is accessible at [http://localhost:3000/](http://localhost:3000/), but will likely show a blank page in your web browser and throw an error. This is due to the database being empty, therefore there is no data to display.

## Windows Development Note

When developing on Windows, be aware that Git may automatically convert line endings from LF (Unix-style) to CRLF (Windows-style). This can cause issues with shell scripts run inside Docker containers, such as `entrypoint.sh` and `migrate.sh`, resulting in errors like "entrypoint.sh not found" or "bad interpreter".

To address this, we''ve added a `.gitattributes` file that forces shell scripts to maintain LF line endings regardless of the operating system.

### For New Repository Clones

The `.gitattributes` file will automatically ensure proper line endings for new files.

### For Existing Repository Clones

If you encounter line ending issues with existing files:

1. Make sure you''ve pulled the latest changes with the `.gitattributes` file
2. Run: `git add --renormalize .`
3. Commit these changes: `git commit -m "Normalize line endings"`
4. Reset your working directory: `git checkout -- .`

Alternatively, you can also:

- Run `git config --global core.autocrlf input` to configure Git to preserve line endings
- Clone the repository again

### Generating environmental variables

The frontend and backend containers require environmental variables to be set in order to run. These are stored in a `.env` file in the root directory, which you will need to create based on the provided `.env.example` template. Copy `.env.example` to `.env` and update the values as needed.

```bash
cp .env.example .env
# Now edit .env with your own values
```

The `.env` file is used to provide the necessary environment variables to the local development containers and can be used as a base to setup environment variables for a production environment. The `.env` file should never be committed to the repository as it contains sensitive information.

> NOTE: We have run into issues with syntax of AWS ECS with the environment file. The string encapsulation characters `''` and `"` are treated as literals, while [docker supports quoting](https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/#env-file-syntax).

#### Flask Configuration

The `CONFIG_TYPE` configures the Flask app to run in either `development` mode with value of `Development` or `production` mode with a value of `Production`. There is a `testing` mode with value of `Testing` as well, but this is used for running unit tests and should not be used in production.

#### Database (Postgres)

We use [Postgresql](https://www.postgresql.org/) as the database for the ENTS backend. The fields `DB_USER`, `DB_PASSWORD`, `DB_HOST`, and `DB_DATABASE` should be filled out with the appropriate values. The `DB_PORT` should be set to `5432` as this is the default port for Postgresql. The following SQL commands can be used to create a new database and user where `''password''` is replaced with a secure randomly generated password.

```sql
CREATE DATABASE dirtviz;
CREATE ROLE dirtviz WITH NOLOGIN PASSWORD ''password'';
```

#### Public URL

The `PUBLIC_URL` is the domain alias that the website is hosted on. This is used to generate links in the website and should be set to the domain that the website is hosted on. For local development, this can be set to `http://localhost:3000/`.

#### Google

The Google API key is used to enable logins with Google accounts. Navigate to the [Google Cloud Console](https://console.cloud.google.com/) and create a new project or select the existing one associate with the website. Goto the _Google Auth Platform > Clients_ and create a new client. The client ID and secret can be found in the client details and are populated in `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET`.

The `OAUTH_REDIRECT_URI` is the URI that Google will redirect to after a successful login. This should be set to the homepage of the hosted website, in our publically hosted instance this is set to `https://dirtviz.jlab.ucsc.edu/auth/callback`. Ensure the domain is authorized in the Google Cloud Console. For local development, this can be set to `http://localhost:3000/auth/callback`.

#### Flask Secrets

To generate a secret key for the `SECRET_KEY`, `REFRESH_TOKEN_SECRET`, and `ACCESS_TOKEN_SECRET` variables, run the following _three separate times_ in a python shell:

```
>>> import secrets
>>> secrets.token_urlsafe(16)
''LcbUf00Qnh5r-TXDNJML0g''
```

<!-- for reference OLD -->

### Migrate Database

Alembic is used to manage database migrations. Alembic is a python package and acts as a complement to sqlalchemy which is used to query the database. The following will upgrade the database to the most recent version and should be done any time the database schema changes.

> **NOTE:** It is recommended that a virtual environment is setup and **_ALL_** dependencies are installed via `pip install -r requirements.txt`. If you are unsure what this means, read [this](https://docs.python.org/3/tutorial/venv.html).

A migration script is provided in this repository that abstracts the migration process.

```bash
# To check out usage run
./migrate.sh -h
```

### Import Example Data

Real life example data is provided and can be imported with the following. The data was collected at UC Santa Cruz by jlab.

```console
python ./import_example_data.py
```

Now some graphs should appear on the website and look like the following.

![Example screenshot of ENTS backend](.github/assets/img/dashboard.png)

## Architecture

### System

ENTS backend''s client is built with React and is located under the `frontend` folder. ENTS backend''s API is built with Flask and located under the `backend` folder. Check out the [frontend readme](frontend/README.md) and the [backend readme](backend/README.md) for more information.

### Local Development and Production Environments

To compile for with development configurations (eg. hot reload and logs), in `docker-compose.yml` set `target: development`. To test containers in with production configuration use `target: production`.

## Support

For bugs refer to [bug_template.md](.github/ISSUE_TEMPLATE/bug_template). For other issues, create an new issue in this repository.

For documentation on the backend, refer to [backend readme](backend/README.md)

## Contributing

To start contributing to the ENTS backend, please read [CONTRIBUTING.md](CONTRIBUTING.md)

Here''s a list of [good first issues](https://github.com/jlab-sensing/DirtViz/labels/good%20first%20issue) to get yourself familiar with the ENTS backend. Comment in the issue to pick it up, and feel free to ask any questions!

## FAQ

### How do I create database migrations?

This projects makes use of [alembic](https://alembic.sqlalchemy.org/en/latest/) to handle database migrations and [flask-migrate](https://flask-migrate.readthedocs.io/en/latest/) as an extension to make alembic operations avaliable through the Flask cli. It is recommended to have a understanding of the package first before attempting to modify the database schema. Due to the way that alembic handles package imports, the config file needs to be specified while running from the root project folder. For example the following will autogenerate new migrations from the latest revision of the database.

The script migrate.sh takes in a "-m \\<msg\\>" for generating a new migration and by itself runs "alembic upgrade head".

> **NOTE:** Autogeneration of migrations requires a running version of the database. Refer above to see how to create and connect to a local version of the database

```bash
./migrate.sh -m "migration message here"
```

### How do I reset the local database?

Sometimes the database breaks and causes errors. Usually deleting the docker volume `postgresqldata` causing the database to be recreated fixes the issue. The following does exactly that and reapplies the migrations to the cleaned database.

```console
docker compose down
docker volume rm dirtviz_postgresqldata
docker compose up --build -d
./migrate.sh -u
```

### \\[Flask-migrate\\] Error: Can''t locate revision identified by ''e5dbb2a59f94''

For this error, it either means that you''ve deleted a revision corresponding to the id located in `./backend/api/migrations/versions` or that if it''s during the deployment process, the alembic version in the db (under the alembic version table) is mismatched. Double check to see if the revision history is the same for both deployment and locally.

### How do I import my own TEROS and Rocketlogger data previously collected?

There exists csv importers that can be used to populate the database. Python utilities currently exist to import RocketLogger and TEROS data. These are available as modules under the backend folder. More information on used can be found by running the modules with the `--help` flag.

```bash
python -m backend.api.database.utils.import_cell_data
```

## Maintainers

- Aaron Wu [aaron-wu1](https://github.com/aaron-wu1)

## Contributors

- John Madden [jmadden173](https://github.com/jmadden173)
- Alec Levy [aleclevy](https://github.com/aleclevy)
', '0', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/releases{/id}', '1', NULL, '44219', 'git@github.com:jlab-sensing/ENTS-backend.git', '5', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/stargazers', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/statuses/{sha}', '1', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/subscribers', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/subscription', 'https://github.com/jlab-sensing/ENTS-backend', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/tags', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/teams', 'https://api.github.com/repos/jlab-sensing/ENTS-backend/git/trees{/sha}', 'ucsc', '2025-03-01 21:42:21+00', 'https://api.github.com/repos/jlab-sensing/ENTS-backend', 'public', '5', '5', '0');
insert into "combined_repositories_showcase" ("ai_prediction", "allow_forking", "archive_url", "archived", "assignees_url", "blobs_url", "branches_url", "clone_url", "code_of_conduct", "collaborators_url", "comments_url", "commits_url", "compare_url", "contents_url", "contributing", "contributors", "contributors_url", "created_at", "default_branch", "deployments_url", "description", "disabled", "downloads_url", "events_url", "fork", "forks", "forks_count", "forks_url", "full_name", "git_commits_url", "git_refs_url", "git_tags_url", "git_url", "has_discussions", "has_downloads", "has_issues", "has_pages", "has_projects", "has_wiki", "homepage", "hooks_url", "html_url", "id", "is_template", "issue_comment_url", "issue_events_url", "issue_templates", "issues_url", "keys_url", "labels_url", "language", "languages_url", "license", "manual_label", "merges_url", "milestones_url", "mirror_url", "name", "node_id", "notifications_url", "open_issues", "open_issues_count", "organization", "owner", "prediction", "private", "pull_request_template", "pulls_url", "pushed_at", "readme", "release_downloads", "releases_url", "score", "security_policy", "size", "ssh_url", "stargazers_count", "stargazers_url", "statuses_url", "subscribers_count", "subscribers_url", "subscription_url", "svn_url", "tags_url", "teams_url", "trees_url", "university", "updated_at", "url", "visibility", "watchers", "watchers_count", "web_commit_signoff_required") values ('1', '1', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/{archive_format}{/ref}', '0', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/assignees{/user}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/git/blobs{/sha}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/branches{/branch}', 'https://github.com/UCSCLibrary/BulkMetadataEditor.git', NULL, 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/collaborators{/collaborator}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/comments{/number}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/commits{/sha}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/compare/{base}...{head}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/contents/{+path}', NULL, '["DBinaghi","Daniel-KM","NedHenry","jajm","kloor"]', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/contributors', '2014-03-20 16:48:15+00', 'master', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/deployments', 'Plugin for Omeka Classic - Bulk metadata search and edit', '0', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/downloads', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/events', '0', '6', '6', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/forks', 'UCSCLibrary/BulkMetadataEditor', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/git/commits{/sha}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/git/refs{/sha}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/git/tags{/sha}', 'git://github.com/UCSCLibrary/BulkMetadataEditor.git', '0', '1', '1', '0', '1', '1', NULL, 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/hooks', 'https://github.com/UCSCLibrary/BulkMetadataEditor', '31', '0', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/issues/comments{/number}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/issues/events{/number}', NULL, 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/issues{/number}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/keys{/key_id}', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/labels{/name}', 'PHP', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/languages', NULL, '1', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/merges', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/milestones{/number}', NULL, 'BulkMetadataEditor', 'MDEwOlJlcG9zaXRvcnkxNzk1MDQ1Ng==', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/notifications{?since,all,participating}', '2', '2', '1', 'UCSCLibrary', 0.81, '0', NULL, 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/pulls{/number}', '2023-11-29 02:15:39+00', 'Bulk Metadata Editor (plugin for Omeka)
=======================================

[Bulk Metadata Editor] is an [Omeka] plugin intended to expedite the process of
editing metadata in Omeka collections of digital objects by providing tools for
administrators to edit many Items at once based on prespecified rules.

If you use this plugin, please take a moment to submit feedback about your
experience, so we can keep making Omeka better: [User Survey].

The editing options available are:
- Search and replace text
- Add a new metadatum in the selected field
- Prepend text to existing metadata in the selected fields
- Append text to existing metadata in the selected fields
- Remove text from ends of existing metadata in the selected fields
- Convert to uppercase or lowercase existing metadata in the selected fields
- Explode metadata with a separator in multiple elements in the selected fields
- Deduplicate and join metadata in the selected fields
- Deduplicate and remove empty metadata in the selected fields
- Deduplicate files of selected items by hash
- Delete all existing metadata in the selected fields
- Copy/Move content from the selected field to another

Installation
------------

Uncompress files and rename plugin folder "BulkMetadataEditor".

Then install it like any other Omeka plugin.

You may have to set the php cli path in `application/config/config.ini`,
according to your server if it is not automatically detected:

```
background.php.path = "/usr/bin/php-cli"
```

In order to get messages about the process, you may have to set the logger:

```
log.errors = true
log.priority = Zend_Log::INFO
```

The log file is `application/logs/errors.log`, that must be writeable.


Notes
-----

- After a successful process, records must be reindexed in order to find them
  via the quick search field.
- The change "*Append text to existing metadata in the selected fields*" appends
  text only if there is already a metadata.
- The preview may fail when there is a lot of fields or changes to prepare.
  The true process will still work fine even with a huge number of items
  and fields, because it is done in the background, without the limit set by the
  server. Nevertheless, it''s recommended to avoid too large updates.


Warning
-------

Use it at your own risk.

It''s always recommended to backup your files and your databases and to check
your archives regularly so you can roll back if needed.


Troubleshooting
---------------

See online issues on the [plugin issues] page on GitHub.


License
-------

This plugin is published under [GNU/GPL v3].

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


Copyright
---------

* Copyright 2014 UCSC Library Digital Initiatives
* Copyright Daniel Berthereau, 2015-2017 (see [Daniel-KM] on GitHub)
* Copyright Julian Maurice for BibLibre, 2015 (see [jajm] on GitHub)
* Copyright Daniele Binaghi, 2020-2023 (see [DBinaghi] on GitHub)

[Bulk Metadata Editor]: https://github.com/UCSCLibrary/BulkMetadataEditor
[Omeka]: https://omeka.org
[User Survey]: https://docs.google.com/forms/d/1sfct41zxTelXFlyBwtsT1u33nRl7GGofSTt06d1SDMQ/viewform?usp=send_form
[plugin issues]: https://github.com/UCSCLibrary/BulkMetadataEditor/issues
[GNU/GPL v3]: https://www.gnu.org/licenses/gpl-3.0.html
[Daniel-KM]: https://github.com/Daniel-KM
[jajm]: https://github.com/jajm
[DBinaghi]: https://github.com/DBinaghi
', '4040', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/releases{/id}', '1', NULL, '421', 'git@github.com:UCSCLibrary/BulkMetadataEditor.git', '13', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/stargazers', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/statuses/{sha}', '5', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/subscribers', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/subscription', 'https://github.com/UCSCLibrary/BulkMetadataEditor', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/tags', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/teams', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor/git/trees{/sha}', 'ucsc', '2024-04-17 13:20:18+00', 'https://api.github.com/repos/UCSCLibrary/BulkMetadataEditor', 'public', '13', '13', '0');
