.class public Lorg/jaxen/function/CeilingFunction;
.super Ljava/lang/Object;
.source "CeilingFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;

    .prologue
    .line 126
    invoke-static {p0, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    .line 129
    .local v0, "value":Ljava/lang/Double;
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/CeilingFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "ceiling() requires one argument."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
