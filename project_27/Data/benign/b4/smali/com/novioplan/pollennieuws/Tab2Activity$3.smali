.class Lcom/novioplan/pollennieuws/Tab2Activity$3;
.super Ljava/lang/Object;
.source "Tab2Activity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/Tab2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab2Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab2Activity$3;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity$3;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-static {v0, p1}, Lcom/novioplan/pollennieuws/Tab2Activity;->access$102(Lcom/novioplan/pollennieuws/Tab2Activity;Landroid/location/Location;)Landroid/location/Location;

    .line 147
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 153
    return-void
.end method
