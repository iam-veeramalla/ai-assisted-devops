import ollama

PROMPT = """
ONLY Generate an ideal Dockerfile for {language} with best practices. Do not provide any description
Include:
- Base image
- Installing dependencies
- Setting working directory
- Adding source code
- Running the application
"""

def generate_dockerfile(language):
    response = ollama.chat(model='llama3.2:1b', messages=[{'role': 'user', 'content': PROMPT.format(language=language)}])
    return response['message']['content']

if __name__ == '__main__':
    language = input("Enter the programming language: ")
    dockerfile = generate_dockerfile(language)
    print("\nGenerated Dockerfile:\n")
    print(dockerfile)
