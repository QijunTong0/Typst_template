# Typst Template with AI Integration

This repository provides a powerful authoring environment for the [Typst](https://typst.app/) typesetting system, enhanced with integrated AI assistance.

## AI-Powered Assistance

A key feature of this template is its deep integration with large language models (LLMs) to provide expert-level assistance for writing formal academic articles. The AI's knowledge base is built directly from the official Typst documentation, which is included as a submodule.

By referencing the complete and up-to-date documentation, the AI can:

*   **Provide Accurate Guidance:** Offer precise and reliable answers based on the official Typst tutorials, guides, and reference materials.
*   **Avoid Hallucinations:** Significantly reduce the risk of generating incorrect or outdated code (e.g., LaTeX syntax) by grounding its responses in the official documentation. This is particularly helpful given the relative scarcity of Typst examples in public training data.
*   **Accelerate Your Workflow:** Help you quickly find the right functions, understand complex syntax, and apply best practices for academic writing in Typst.

This approach ensures that you receive high-quality, context-aware support, making your writing process faster and more efficient.

## Templates

This repository includes the following templates:

*   **Article**: A standard template for academic papers.
    *   Sample: `article_sample.typ`
*   **Poster**: A template for creating conference posters.
    *   Template: `templates/poster.typ`
    *   Sample: `poster_sample.typ`
*   **Slide**: A template for presentation slides.
    *   Template: `templates/slide.typ`
    *   Sample: `slide_sample.typ`

## Getting Started

To use this template, simply clone the repository and initialize the submodule to ensure the AI has access to the full documentation:

```bash
git clone <repository-url>
cd Typst_template
git submodule update --init --recursive
```

You can then begin writing your document by editing one of the sample files (`article_sample.typ`, `poster_sample.typ`, or `slide_sample.typ`) and interact with the integrated AI to assist you.

## Development

### Typst Setup

To compile `.typ` files, you need to install the Typst command-line interface (CLI). You have two main options:

1.  **Using Cargo:** If you have Rust and Cargo installed, you can install the CLI from source:
    ```bash
    cargo install --git https://github.com/typst/typst typst-cli
    ```

2.  **Pre-compiled Binaries:** You can download pre-compiled binaries for your operating system from the [official Typst releases page](https://github.com/typst/typst/releases).

After installation, ensure that the `typst` executable is in your system's PATH.

### Pre-commit Setup

This repository is configured with a pre-commit hook that automatically compiles your `.typ` files into PDFs before each commit. To enable this feature, follow these steps:

1.  **Install Python:** Make sure you have Python installed on your system.

2.  **Install pre-commit:** Use pip, the Python package installer, to install the `pre-commit` framework:
    ```bash
    pip install pre-commit
    ```

3.  **Install the Git hooks:** In your repository, run the following command to set up the pre-commit hooks:
    ```bash
    pre-commit install
    ```

Now, whenever you commit changes to a `.typ` file, a corresponding PDF will be generated in the same directory.

