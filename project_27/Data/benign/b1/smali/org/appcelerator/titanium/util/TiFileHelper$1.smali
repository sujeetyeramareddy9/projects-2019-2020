.class Lorg/appcelerator/titanium/util/TiFileHelper$1;
.super Ljava/lang/Object;
.source "TiFileHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiFileHelper;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiFileHelper;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiFileHelper$1;->this$0:Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 528
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method
