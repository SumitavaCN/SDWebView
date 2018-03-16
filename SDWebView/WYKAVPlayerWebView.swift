//
//  WYKAVPlayerWebView.swift
//  PlayVideo
//
//  Created by CN354 on 14/03/18.
//  Copyright © 2018 iVideoSmart. All rights reserved.
//

import UIKit

public class WYKAVPlayerWebView: UIWebView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
//        self.configureThePlayerWebView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK: Configure WebView
    public func configureThePlayerWebView() {
        self.delegate = self
        self.isOpaque = false
        self.backgroundColor = .clear
        self.scrollView.isScrollEnabled = false
        self.loadHTMLString("<!doctype html><html><head><meta charset=\"utf-8\" /><meta name=\"viewport\" content=\"width=device-width\" /><style>* {margin: 0;padding: 0;}html {text-rendering: optimizeLegibility !important;-webkit-font-smoothing: antialiased !important;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;overflow-x:hidden;} body{height:100%;font-family:'Lato', sans-serif;font-size:14px;color:#0e526f;}h2{position:absolute;top:50%;width:100%;text-align:center;transform:translateY(-50%);}</style><title>Untitled Document</title></head><body><h2>Hello World</h2></body></html>", baseURL: nil)
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        self.frame = (self.superview?.bounds) ?? CGRect.zero
    }
}

extension WYKAVPlayerWebView : UIWebViewDelegate {
    private func webView(webView: UIWebView!, didFailLoadWithError error: Error!) {
        print("Webview fail with error \(error)");
    }

    private func webViewDidStartLoad(webView: UIWebView!) {
        print("Webview started Loading")
    }
    private func webViewDidFinishLoad(webView: UIWebView!) {
        print("Webview did finish load")
    }
}
