.class Laoh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laoc;

.field final synthetic b:Laog;


# direct methods
.method constructor <init>(Laog;Laoc;)V
    .locals 0

    iput-object p1, p0, Laoh;->b:Laog;

    iput-object p2, p0, Laoh;->a:Laoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Laoh;->a:Laoc;

    invoke-virtual {v0}, Laoc;->h()Laof;

    move-result-object v0

    iget-object v1, p0, Laoh;->a:Laoc;

    invoke-virtual {v0, v1}, Laof;->a(Laoc;)V

    iget-object v0, p0, Laoh;->b:Laog;

    invoke-static {v0}, Laog;->a(Laog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laom;

    iget-object v2, p0, Laoh;->a:Laoc;

    invoke-interface {v0, v2}, Laom;->a(Laoc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoh;->b:Laog;

    iget-object v1, p0, Laoh;->a:Laoc;

    invoke-static {v0, v1}, Laog;->a(Laog;Laoc;)V

    return-void
.end method
