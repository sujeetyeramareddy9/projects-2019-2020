.class public Lcom/google/ads/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/b/r;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2

    instance-of v0, p3, Lcom/google/ads/b/c;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/b/c;

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/ads/b/c;->setCustomClose(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to set a custom close icon on a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/e/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
