.class Lbky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnq;


# instance fields
.field final synthetic a:Lbkx;


# direct methods
.method constructor <init>(Lbkx;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lbky;->a:Lbkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Lbfb;)Lbea;
    .locals 4

    .prologue
    .line 559
    new-instance v0, Lbea;

    invoke-direct {v0, p1, p2, p3}, Lbea;-><init>(Landroid/net/Uri;Ljava/lang/String;Lbfb;)V

    .line 560
    iget-object v1, p0, Lbky;->a:Lbkx;

    iget-object v1, v1, Lbkx;->b:Lbku;

    iget-object v1, v1, Lbku;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-virtual {v0}, Lbea;->e()Lbfb;

    move-result-object v1

    const-string v2, "User-Agent"

    iget-object v3, p0, Lbky;->a:Lbkx;

    iget-object v3, v3, Lbkx;->b:Lbku;

    iget-object v3, v3, Lbku;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    .line 562
    :cond_0
    return-object v0
.end method
