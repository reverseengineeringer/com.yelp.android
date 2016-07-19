.class public Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;
.super Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;
.source "DeleteReviewDialog.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "args_business_name"

    sput-object v0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->b:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "args_modified_date"

    sput-object v0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->c:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "MM/dd/yyyy"

    sput-object v0, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/ui/dialogs/b;)Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    new-instance v1, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;

    invoke-direct {v1}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;-><init>()V

    .line 27
    sget-object v2, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v2, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->c:Ljava/lang/String;

    sget-object v3, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->W()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v1, p1}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070246

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070247

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070240

    new-instance v2, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/DeleteReviewDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/DeleteReviewDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070354

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
