.class Lbca;
.super Lbcd;
.source "SourceFile"


# instance fields
.field a:Lbcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcb",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILbcb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbcb",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lbcd;-><init>(I)V

    .line 50
    if-gtz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p2, p0, Lbca;->a:Lbcb;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)Lbcd;
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lbca;->c:I

    new-array v0, v0, [B

    .line 58
    invoke-virtual {p2, v0}, Lbaz;->a([B)V

    .line 59
    iget-object v1, p0, Lbca;->a:Lbcb;

    invoke-interface {v1, v0}, Lbcb;->a(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method