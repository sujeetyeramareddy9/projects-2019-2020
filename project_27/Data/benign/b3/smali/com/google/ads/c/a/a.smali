.class public Lcom/google/ads/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/c/j;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/ads/c/a/a;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/c/a/a;->b:Z

    invoke-virtual {p0}, Lcom/google/ads/c/a/a;->c()Lcom/google/ads/c/a/a;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/ads/c/a/a;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/c/a/a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/c/a/a;->a:Z

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/c/a/a;->c:Ljava/util/Map;

    return-object v0
.end method