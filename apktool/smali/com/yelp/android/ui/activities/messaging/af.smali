.class Lcom/yelp/android/ui/activities/messaging/af;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/af;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/af;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;)Lcom/yelp/android/ui/dialogs/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/dialogs/r;->a(Ljava/lang/String;)V

    .line 172
    return-void
.end method
