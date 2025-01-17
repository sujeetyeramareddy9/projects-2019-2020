.class abstract Lorg/jaxen/expr/DefaultBinaryExpr;
.super Lorg/jaxen/expr/DefaultExpr;
.source "DefaultBinaryExpr.java"

# interfaces
.implements Lorg/jaxen/expr/BinaryExpr;


# instance fields
.field private lhs:Lorg/jaxen/expr/Expr;

.field private rhs:Lorg/jaxen/expr/Expr;


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultExpr;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->lhs:Lorg/jaxen/expr/Expr;

    .line 60
    iput-object p2, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->rhs:Lorg/jaxen/expr/Expr;

    .line 61
    return-void
.end method


# virtual methods
.method public getLHS()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->lhs:Lorg/jaxen/expr/Expr;

    return-object v0
.end method

.method public abstract getOperator()Ljava/lang/String;
.end method

.method public getRHS()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->rhs:Lorg/jaxen/expr/Expr;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLHS(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->lhs:Lorg/jaxen/expr/Expr;

    .line 76
    return-void
.end method

.method public setRHS(Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/jaxen/expr/DefaultBinaryExpr;->rhs:Lorg/jaxen/expr/Expr;

    .line 81
    return-void
.end method

.method public simplify()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/Expr;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/expr/DefaultBinaryExpr;->setLHS(Lorg/jaxen/expr/Expr;)V

    .line 98
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/Expr;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/expr/DefaultBinaryExpr;->setRHS(Lorg/jaxen/expr/Expr;)V

    .line 100
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultBinaryExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
