.class public Lbfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbeh;


# instance fields
.field a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lbfr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbfq;->a:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lbds;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lbfq;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfr;

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lbfr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lbfr;-><init>(Ljava/lang/Class;)V

    .line 59
    iget-object v2, p0, Lbfq;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lbfr;->a(Ljavax/net/ssl/SSLEngine;Lbds;Ljava/lang/String;I)V

    .line 63
    return-void
.end method
