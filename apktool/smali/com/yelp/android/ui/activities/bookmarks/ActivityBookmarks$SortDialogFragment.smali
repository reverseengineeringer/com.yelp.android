.class public Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ActivityBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;)Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 402
    iput p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->b:I

    .line 403
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$a;

    .line 399
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 377
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 379
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v5

    iget v4, v4, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    const v2, 0x7f070263

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07018f

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;->b:I

    new-instance v4, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment$1;-><init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$SortDialogFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
