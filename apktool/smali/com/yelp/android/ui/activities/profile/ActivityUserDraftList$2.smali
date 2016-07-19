.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;
.super Ljava/lang/Object;
.source "ActivityUserDraftList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReviewDraft;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/serializable/ReviewDraft;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->b:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->a:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 170
    const v0, 0x7f070243

    const v1, 0x7f070244

    const v2, 0x7f070351

    const v3, 0x7f070240

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->b:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->b(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->b:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "delete_draft_confirmation"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->b:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$2;->a:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/serializable/ReviewDraft;)Lcom/yelp/android/serializable/ReviewDraft;

    .line 179
    const/4 v0, 0x1

    return v0
.end method
