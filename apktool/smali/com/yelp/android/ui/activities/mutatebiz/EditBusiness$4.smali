.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$4;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$4;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->updateOptionsMenu()V

    .line 166
    return-void
.end method
