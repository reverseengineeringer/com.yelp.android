.class public Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ActivityBookmarks.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;)Lcom/yelp/android/ui/activities/q;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/q;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/q;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->a:Lcom/yelp/android/ui/activities/q;

    .line 465
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 446
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 448
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v5

    iget v4, v4, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    const v2, 0x7f070217

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/p;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/p;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks$SortDialogFragment;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
