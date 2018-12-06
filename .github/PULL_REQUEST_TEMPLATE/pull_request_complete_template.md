*PLEASE USE THIS AS A GUIDELINE*

If you don't know all the power of Gitlab markdown, please review first https://gitlab.occ.com.mx/help/user/markdown

Please delete any section Non-Applicable, the only sections that should be quasi-mandatory are:
- Description
- Before (without subsections)
- After (without subsections)

# Description

Please include a summary of the change and which feature is implemented or issue is fixed. Please also include proper motivation and context. List any dependencies that are required for this change.

Implements Feature # (trello card URL) or
Fixes # (trello card issue URL)

## Type of change

Please delete options that are not relevant.

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality not to work as expected)
- [ ] This change requires a documentation update

# Before
If the change is in the UX/UI, please add an animated gif (a useful tool for creating the gif is http://recordit.co/( then uploading the gif to our gitlab server using the `Attach a file`or uploading in other place and insert the image using `![alt text](URL/animated.gif)` to present the before state and behavior of the UX/UI
If the change is not visible in the frontend, describe here the before behavior.

## References
If the MR references any other issue or MR, etc. you can use https://gitlab.occ.com.mx/help/user/markdown#special-gitlab-references

# After
If the change is in the UX/UI, please add an animated gif to present the after state and behavior of the UX/UI
If the change is not visible in the frontend, describe here the before behavior


## TODO List
Use this to outline your task plan to implement this feature, once you finished that task marked as done

- [X] Feature Spec (based on Acceptance Criteria)
- [ ] Implement code for passing the feature spec
- [ ] Refactoring
- [ ] Review of Done

## Technical Debt
If technical debt was added because a discussed decision, please be explicit and write here about the Technical Debt, trade-offs or compromises done
If technical debt was paid also explain how this paid that technical debt

## How Has This Been Tested?

Please describe the tests that you ran to verify your changes. Provide instructions so we can reproduce. Please also list any relevant details for your test configuration or instructions.

- [ ] Test A
- [ ] Test B

# Checklists:

## For Submitters
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have refactored my code for trying to follow principles, patterns, and practices
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes
- [ ] Any dependent changes have been merged and published in downstream

## For reviewers
- [ ] the MR is understandable and valuable, and focus/short enough
- [ ] the code is correct, explicit, understandable and maintainable
- [ ] there is no unnecessary duplication of code
- [ ] the code doesn't add technical debt