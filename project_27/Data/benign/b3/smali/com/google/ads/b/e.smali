.class public Lcom/google/ads/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/e/o;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field private static final d:Lcom/google/ads/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/b/e;

    invoke-direct {v0}, Lcom/google/ads/b/e;-><init>()V

    sput-object v0, Lcom/google/ads/b/e;->d:Lcom/google/ads/b/e;

    new-instance v0, Lcom/google/ads/b/g;

    invoke-direct {v0}, Lcom/google/ads/b/g;-><init>()V

    sput-object v0, Lcom/google/ads/b/e;->a:Lcom/google/ads/e/o;

    new-instance v0, Lcom/google/ads/b/h;

    invoke-direct {v0}, Lcom/google/ads/b/h;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/b/e;->b:Ljava/util/Map;

    new-instance v0, Lcom/google/ads/b/f;

    invoke-direct {v0}, Lcom/google/ads/b/f;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/b/e;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/ads/b/e;
    .locals 1

    sget-object v0, Lcom/google/ads/b/e;->d:Lcom/google/ads/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/google/ads/b/e;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "An error occurred while parsing the AMSG parameters."

    invoke-static {v1}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "a"

    const-string v1, "intent"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u"

    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/open"

    goto :goto_0

    :cond_1
    const-string v2, "closecanvas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "/close"

    goto :goto_0

    :cond_2
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "/log"

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while parsing the AMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/b/e;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "Message was neither a GMSG nor an AMSG."

    invoke-static {v1}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "onshow"

    const-string v1, "{\'version\': \'afma-sdk-a-v6.2.1\'}"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending JS to a WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AFMA_ReceiveMessage"

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openableURLs"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/ads/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/b/r;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .locals 3

    invoke-static {p3}, Lcom/google/ads/e/a;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "An error occurred while parsing the message parameters."

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3, v1}, Lcom/google/ads/b/e;->a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "An error occurred while parsing the message."

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/as;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No AdResponse found, <message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/e/f;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1, v1, p4}, Lcom/google/ads/as;->a(Lcom/google/ads/b/r;Ljava/util/HashMap;Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/ads/b/e;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/ads/b/e;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "gmsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "mobileads.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
