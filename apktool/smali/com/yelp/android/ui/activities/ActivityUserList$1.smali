.class Lcom/yelp/android/ui/activities/ActivityUserList$1;
.super Ljava/lang/Object;
.source "ActivityUserList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityUserList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityUserList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityUserList;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityUserList$1;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityUserList$1;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityUserList;->a(Lcom/yelp/android/ui/activities/ActivityUserList;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityUserList$1;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityUserList$1;->a:Lcom/yelp/android/ui/activities/ActivityUserList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityUserList;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
