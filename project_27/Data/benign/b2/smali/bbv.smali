.class Lbbv;
.super Lbcd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method constructor <init>(Lbbr;I)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lbbv;->a:Lbbr;

    invoke-direct {p0, p2}, Lbcd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)Lbcd;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lbbv;->a:Lbbr;

    invoke-static {v0}, Lbbr;->a(Lbbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lbaz;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method