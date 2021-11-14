import CopyWebpackPlugin from "copy-webpack-plugin";

export default {
    productionSourceMap: false,
    configureWebpack: {
        plugins: [
            new CopyWebpackPlugin([
                {
                    from: 'src/style',
                    to: 'style/',
                    toType: 'dir'
                }
            ])
        ]
    }
};
