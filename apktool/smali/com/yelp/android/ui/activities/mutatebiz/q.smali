.class Lcom/yelp/android/ui/activities/mutatebiz/q;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/q;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/q;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    const v1, 0x7f0c0130

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/q;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->updateOptionsMenu()V

    .line 120
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
