.class public Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ActivityComboBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 522
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;)Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$a;

    .line 520
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 499
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 501
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v5

    iget v4, v4, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    const v2, 0x7f070263

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$SortDialogFragment;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
