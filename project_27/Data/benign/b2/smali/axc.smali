.class final Laxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lauj;",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p2}, Lazi;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 43
    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-static {v1}, Lavn;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v2

    .line 49
    new-instance v0, Laxb;

    .line 50
    invoke-static {v1}, Lavn;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Laxb;-><init>(Lauj;Lavf;Ljava/lang/Class;)V

    goto :goto_0
.end method
