.class Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;
.super Ljava/lang/Object;
.source "EditOpenHours.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "LISTED_HOURS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
