.class Lcom/yelp/android/ui/dialogs/bk;
.super Ljava/lang/Object;
.source "UpdatePromptDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bk;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bk;->a:Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->dismiss()V

    .line 78
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePromptRemindLater:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 79
    return-void
.end method
