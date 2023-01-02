import styles from '../../styles/Home.module.css';
import Image from 'next/image';

const BizArch = () => {
    return <div className={styles.main}>
        <h1>Business Architecture</h1>
        <div>
            <Image src='/bizbok.jpeg' height="550" width="800" useMap="#myMap"></Image>
        </div>
        <map name="myMap">
            <area shape="rect" coords="10,10,50,50" href="https://www.amazon.ca"></area>
        </map>
    </div>
};

export default BizArch;