.class Lbnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbku;

.field final synthetic b:Lbea;

.field final synthetic c:Lbnz;

.field final synthetic d:Lbdb;

.field final synthetic e:Lbno;


# direct methods
.method constructor <init>(Lbno;Lbku;Lbea;Lbnz;Lbdb;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lbnp;->e:Lbno;

    iput-object p2, p0, Lbnp;->a:Lbku;

    iput-object p3, p0, Lbnp;->b:Lbea;

    iput-object p4, p0, Lbnp;->c:Lbnz;

    iput-object p5, p0, Lbnp;->d:Lbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 44
    :try_start_0
    iget-object v0, p0, Lbnp;->e:Lbno;

    iget-object v1, p0, Lbnp;->a:Lbku;

    invoke-virtual {v1}, Lbku;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbnp;->b:Lbea;

    invoke-virtual {v2}, Lbea;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbno;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to load content stream"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lbnp;->c:Lbnz;

    invoke-virtual {v1, v0}, Lbnz;->a(Ljava/lang/Exception;)Z

    .line 54
    iget-object v1, p0, Lbnp;->d:Lbdb;

    invoke-interface {v1, v0, v9}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 48
    new-instance v1, Lbjk;

    iget-object v3, p0, Lbnp;->a:Lbku;

    invoke-virtual {v3}, Lbku;->e()Lbdj;

    move-result-object v3

    invoke-virtual {v3}, Lbdj;->d()Lbag;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lbjk;-><init>(Lbag;Ljava/io/InputStream;)V

    .line 49
    iget-object v0, p0, Lbnp;->c:Lbnz;

    invoke-virtual {v0, v1}, Lbnz;->b(Ljava/lang/Object;)Z

    .line 50
    iget-object v7, p0, Lbnp;->d:Lbdb;

    const/4 v8, 0x0

    new-instance v0, Lbmd;

    int-to-long v2, v2

    sget-object v4, Lbmi;->b:Lbmi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lbmd;-><init>(Lbbc;JLbmi;Lbkt;Lbea;)V

    invoke-interface {v7, v8, v0}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
