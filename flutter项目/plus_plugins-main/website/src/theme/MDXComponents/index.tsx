import React, { HTMLProps, ReactElement, ReactNode } from 'react';
import Link from '@docusaurus/Link';
import CodeBlock from '@theme/CodeBlock';
import Tabs from '@theme/Tabs';
import Heading from '@theme/Heading';
import TabItem from '@theme/TabItem';

import styles from './styles.module.scss';

import versions from '../../../../docs/versions';
const regex = /{{\s([a-zA-Z0-9_.]*)\s}}/gm;

function getVersion(value: string) {
  let output: string = value;
  const pluginsVersion = versions.plugins;

  const allMatches = value.match(regex);

  allMatches?.forEach(() => {
    const regexValue: RegExpExecArray | null = regex.exec(value);
    if (regexValue !== null) {
      // This is necessary to avoid infinite loops with zero-width matches
      if (regexValue.index === regex.lastIndex) {
        regex.lastIndex++;
      }
      const regexInput = regexValue[0];
      const valueName = regexValue[1].split('.')[1]; // this is plugin name

      const version = pluginsVersion[valueName] || ' ';
      output = output.replace(regexInput, version);
    }
  });

  return output;
}

export default {
  a: (props: HTMLProps<HTMLAnchorElement>): ReactElement => {
    if (props.href && props.href.startsWith('!')) {
      const name = props.href.replace('!', '');
      const entity = name;

      if (entity) {
        return (
          <a
            {...props}
            target="_blank"
            rel="noreferrer"
            href={`https://pub.dev/documentation/${entity}_plus/latest/`}
          />
        );
      } else {
        return <span>{props.children}</span>;
      }
    }

    if (/\.[^./]+$/.test(props.href || '')) {
      return <a {...props} />;
    }
    return <Link {...props} />;
  },

  pre: (props: HTMLProps<HTMLDivElement>): ReactElement => (
    <div className={styles.mdxCodeBlock} {...props} />
  ),

  inlineCode: (props: HTMLProps<HTMLElement>): ReactNode => {
    const { children } = props;
    if (typeof children === 'string') {
      return <code {...props}>{getVersion(children)}</code>;
    }
    return children;
  },

  code: (props: HTMLProps<HTMLElement>): ReactNode => {
    const { children } = props;
    if (typeof children === 'string') {
      return <CodeBlock {...props}>{getVersion(children)}</CodeBlock>;
    }
    return children;
  },

  h1: Heading('h1'),
  h2: Heading('h2'),
  h3: Heading('h3'),
  h4: Heading('h4'),
  h5: Heading('h5'),
  h6: Heading('h6'),

  table: (props: HTMLProps<HTMLTableElement>): ReactElement => (
    <div style={{ overflowX: 'auto' }}>
      <table {...props} />
    </div>
  ),

  Tabs,
  TabItem,

  blockquote: (props: HTMLProps<HTMLElement>): ReactElement => (
    <blockquote className={styles.blockquote} {...props} />
  ),

  //Enables global usage of <YouTube id="xxxx" /> within MDX files
  YouTube: ({ id }: { id: string }): ReactElement => {
    return (
      <div className={styles.youtube}>
        <iframe
          frameBorder="0"
          src={`https://www.youtube.com/embed/${id}`}
          allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          allowFullScreen
        />
      </div>
    );
  },

  Image: ({
    src,
    alt,
    caption = true,
  }: {
    src: string;
    alt?: string;
    caption?: boolean;
  }): ReactElement => {
    return (
      <figure className={styles.figure}>
        <img src={src} />
        {!!alt && caption && <figcaption>{alt}</figcaption>}
      </figure>
    );
  },
};
