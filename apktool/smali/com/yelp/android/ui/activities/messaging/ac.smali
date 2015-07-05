.class Lcom/yelp/android/ui/activities/messaging/ac;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/r;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ac;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ac;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a()V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ac;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ac;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ac;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/serializable/Conversation;Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 147
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingFlagConversationSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 148
    return-void
.end method
