.class public Lcom/google/ads/b/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/s;->a:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/b/s;->a(Ljava/io/Serializable;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/s;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/b/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/b/s;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/ads/b/s;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/io/Serializable;)Ljava/util/HashMap;
    .locals 1

    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/HashMap;

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    iget-object v2, p0, Lcom/google/ads/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/ads/b/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/s;->b:Ljava/util/HashMap;

    return-object v0
.end method
