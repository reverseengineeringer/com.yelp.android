.class Lcom/yelp/android/ui/activities/tips/WriteTip$9;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/tips/WriteTip;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$9;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 605
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$9;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$9;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->j(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/util/ImageInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$9;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    .line 615
    :goto_0
    return v5

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$9;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v1, 0xfa

    new-array v2, v5, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    goto :goto_0
.end method
